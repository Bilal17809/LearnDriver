import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CropperScreen extends StatefulWidget {
  const CropperScreen({Key? key}) : super(key: key);

  @override
  State<CropperScreen> createState() => _CropperScreenState();
}

class _CropperScreenState extends State<CropperScreen> {
  final ImagePicker _picker = ImagePicker();
  Uint8List? _imageToCrop;
  Uint8List? _croppedImage;

  // Grid position and size
  double _gridTop = 100;
  double _gridLeft = 50;
  double _gridWidth = 200;
  double _gridHeight = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Cropper'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Image with Grid Overlay
            Expanded(
              child: _imageToCrop != null
                  ? Stack(
                children: [
                  // Display the image
                  Positioned.fill(
                    child: Image.memory(
                      _imageToCrop!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Draggable and Resizable Grid Overlay
                  Positioned(
                    top: _gridTop,
                    left: _gridLeft,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          _gridTop += details.delta.dy;
                          _gridLeft += details.delta.dx;
                        });
                      },
                      child: Stack(
                        children: [
                          // Crop Box
                          Container(
                            width: _gridWidth,
                            height: _gridHeight,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                          ),
                          // Top-Left Corner
                          Positioned(
                            top: -10,
                            left: -10,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                setState(() {
                                  _gridWidth -= details.delta.dx;
                                  _gridHeight -= details.delta.dy;
                                  _gridTop += details.delta.dy;
                                  _gridLeft += details.delta.dx;
                                });
                              },
                              child: _cornerHandle(),
                            ),
                          ),
                          // Top-Right Corner
                          Positioned(
                            top: -10,
                            right: -10,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                setState(() {
                                  _gridWidth += details.delta.dx;
                                  _gridHeight -= details.delta.dy;
                                  _gridTop += details.delta.dy;
                                });
                              },
                              child: _cornerHandle(),
                            ),
                          ),
                          // Bottom-Left Corner
                          Positioned(
                            bottom: -10,
                            left: -10,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                setState(() {
                                  _gridWidth -= details.delta.dx;
                                  _gridHeight += details.delta.dy;
                                  _gridLeft += details.delta.dx;
                                });
                              },
                              child: _cornerHandle(),
                            ),
                          ),
                          // Bottom-Right Corner
                          Positioned(
                            bottom: -10,
                            right: -10,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                setState(() {
                                  _gridWidth += details.delta.dx;
                                  _gridHeight += details.delta.dy;
                                });
                              },
                              child: _cornerHandle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
                  : const Center(
                child: Text('Pick an image to crop'),
              ),
            ),
            const SizedBox(height: 16),

            // Action Buttons
            Wrap(
              spacing: 16,
              children: [
                ElevatedButton(
                  onPressed: _pickImage,
                  child: const Text('Pick Image'),
                ),
                ElevatedButton(
                  onPressed: _imageToCrop != null ? _cropImage : null,
                  child: const Text('Crop Image'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Display Cropped Image
            if (_croppedImage != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.memory(_croppedImage!),
              ),
          ],
        ),
      ),
    );
  }

  Widget _cornerHandle() {
    return Container(
      width:24, // Increased size for easier interaction
      height: 24, // Increased size for easier interaction
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // Optional: Add a border for better visibility
          width: 2,
        ),
      ),
    );
  }
  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      final bytes = await pickedImage.readAsBytes();
      setState(() {
        _imageToCrop = bytes;
        _croppedImage = null;
      });
    }
  }

  // Future<void> _pickImage() async {
  //   final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     final bytes = await pickedImage.readAsBytes();
  //     setState(() {
  //       _imageToCrop = bytes;
  //       _croppedImage = null;
  //     });
  //   }
  // }

  // Crop the Image Based on the Grid
  Future<void> _cropImage() async {
    if (_imageToCrop == null) return;

    final originalImage = await _decodeImageFromBytes(_imageToCrop!);
    final scaleX = originalImage.width / context.size!.width;
    final scaleY = originalImage.height / context.size!.height;

    final cropRect = Rect.fromLTWH(
      _gridLeft * scaleX,
      _gridTop * scaleY,
      _gridWidth * scaleX,
      _gridHeight * scaleY,
    );

    final croppedBytes = await _cropImageBytes(originalImage, cropRect);

    setState(() {
      _croppedImage = croppedBytes;
    });
  }

  // Decode image from bytes
  Future<ui.Image> _decodeImageFromBytes(Uint8List bytes) async {
    final completer = Completer<ui.Image>();
    ui.decodeImageFromList(bytes, completer.complete);
    return completer.future;
  }

  // Crop image bytes
  Future<Uint8List> _cropImageBytes(ui.Image image, Rect cropRect) async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final src = cropRect;
    final dst = Rect.fromLTWH(0, 0, cropRect.width, cropRect.height);
    canvas.drawImageRect(image, src, dst, Paint());
    final picture = recorder.endRecording();
    final img = await picture.toImage(
      cropRect.width.toInt(),
      cropRect.height.toInt(),
    );
    final byteData = await img.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
