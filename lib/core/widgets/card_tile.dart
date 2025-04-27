import 'package:flutter/material.dart';
import '../../../data/models/category_model.dart';
import '../../gen/assets.gen.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final int subCategoryCount;
  final int index;
  final VoidCallback? onTap;

  const CategoryTile({
    Key? key,
    required this.category,
    required this.subCategoryCount,
    required this.index,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      Assets.img.awareness.path,
      Assets.img.conduct.path,
      Assets.img.vehicleSafety.path,
      Assets.img.risk.path,
      Assets.img.detection.path,
      Assets.img.roadSafety.path,
      Assets.img.specialized.path,
      Assets.img.advanceVehicle.path,
      Assets.img.express.path,
      Assets.img.trafficRules.path,
    ];

    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        title: Text(
          category.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Subcategories: $subCategoryCount',
          style: TextStyle(color: Colors.grey[600]),
        ),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.asset(
              images[index % images.length],
              width: 40,
              height: 40,
              color: Colors.green,
            ),
          ),
        ),
        trailing: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.7),
          ),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.green,
              size: 18,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

/*

extension $QuizPageRouteExtension on QuizPageRoute {
  static QuizPageRoute _fromState(GoRouterState state) => QuizPageRoute(
        name: state.pathParameters['name']!,
        categoryId: int.parse(state.pathParameters['categoryId']!),
        index: int.parse(state.pathParameters['index']!),
        data: state.extra as List<Question>? ?? [],
      );

  String get location => GoRouteData.$location(
        '/Quiz_page/${Uri.encodeComponent(name)}/${Uri.encodeComponent(categoryId.toString())}/${Uri.encodeComponent(index.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: data);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location, extra: data);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: data);

  void replace(BuildContext context) => context.replace(location, extra: data);
}


*/