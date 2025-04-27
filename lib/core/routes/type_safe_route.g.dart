// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_safe_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $categoryPageRoute,
      $quizPageRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/Home_page',
      factory: $HomePageRouteExtension._fromState,
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/Home_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $categoryPageRoute => GoRouteData.$route(
      path: '/category_page/:name/:categoryId/:catLen',
      factory: $CategoryPageRouteExtension._fromState,
    );

extension $CategoryPageRouteExtension on CategoryPageRoute {
  static CategoryPageRoute _fromState(GoRouterState state) => CategoryPageRoute(
        name: state.pathParameters['name']!,
        categoryId: int.parse(state.pathParameters['categoryId']!),
        catLen: int.parse(state.pathParameters['catLen']!),
      );

  String get location => GoRouteData.$location(
        '/category_page/${Uri.encodeComponent(name)}/${Uri.encodeComponent(categoryId.toString())}/${Uri.encodeComponent(catLen.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $quizPageRoute => GoRouteData.$route(
      path: '/Quiz_page/:name/:categoryId/:index',
      factory: $QuizPageRouteExtension._fromState,
    );

extension $QuizPageRouteExtension on QuizPageRoute {
  static QuizPageRoute _fromState(GoRouterState state) => QuizPageRoute(
        name: state.pathParameters['name']!,
        categoryId: int.parse(state.pathParameters['categoryId']!),
        index: int.parse(state.pathParameters['index']!),
        data: state.uri.queryParametersAll['data']?.map((e) => e).toList(),
      );

  String get location => GoRouteData.$location(
        '/Quiz_page/${Uri.encodeComponent(name)}/${Uri.encodeComponent(categoryId.toString())}/${Uri.encodeComponent(index.toString())}',
        queryParams: {
          'data': data,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
