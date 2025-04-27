/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/advance_vehicle.png
  AssetGenImage get advanceVehicle =>
      const AssetGenImage('assets/img/advance_vehicle.png');

  /// File path: assets/img/awareness.png
  AssetGenImage get awareness =>
      const AssetGenImage('assets/img/awareness.png');

  /// File path: assets/img/conduct.png
  AssetGenImage get conduct => const AssetGenImage('assets/img/conduct.png');

  /// File path: assets/img/detection.png
  AssetGenImage get detection =>
      const AssetGenImage('assets/img/detection.png');

  /// File path: assets/img/express.png
  AssetGenImage get express => const AssetGenImage('assets/img/express.png');

  /// File path: assets/img/risk.png
  AssetGenImage get risk => const AssetGenImage('assets/img/risk.png');

  /// File path: assets/img/road_safety.png
  AssetGenImage get roadSafety =>
      const AssetGenImage('assets/img/road_safety.png');

  /// File path: assets/img/specialized.png
  AssetGenImage get specialized =>
      const AssetGenImage('assets/img/specialized.png');

  /// File path: assets/img/traffic_rules.png
  AssetGenImage get trafficRules =>
      const AssetGenImage('assets/img/traffic_rules.png');

  /// File path: assets/img/vehicle_safety.png
  AssetGenImage get vehicleSafety =>
      const AssetGenImage('assets/img/vehicle_safety.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        advanceVehicle,
        awareness,
        conduct,
        detection,
        express,
        risk,
        roadSafety,
        specialized,
        trafficRules,
        vehicleSafety
      ];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
