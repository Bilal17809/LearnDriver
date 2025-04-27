
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_driving/data/models/categoy_model/sub_category_model.dart';
import 'package:learn_driving/presentation/home/view/home_view.dart';

import '../../presentation/category/view/category_view.dart';
import '../../presentation/quizzes/view/quizzes.dart';
part 'type_safe_route.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<HomePageRoute>(path: '/Home_page')
class HomePageRoute extends GoRouteData{
  const HomePageRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<CategoryPageRoute>(
  path: '/category_page/:name/:categoryId/:catLen',
)
class CategoryPageRoute extends GoRouteData {
  final String name;
  final int categoryId;
  final int catLen;

  CategoryPageRoute({
    required this.name,
    required this.categoryId,
    required this.catLen,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CategoryView(
      name: name,
      categoryId: categoryId,
      catLen: catLen,
    );
  }
}



@TypedGoRoute<QuizPageRoute>(
  path: '/Quiz_page/:name/:categoryId/:index',
)
class QuizPageRoute extends GoRouteData {
  final String name;
  final int categoryId;
  final int index;
  final List<Question> data;

  QuizPageRoute({
    required this.name,
    required this.categoryId,
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final List<Question> decodedData = state.extra as List<Question>? ?? [];

    return QuizzView(
      name: name,
      categoryId: categoryId,
      index: index,
      data: decodedData,
    );
  }
}




