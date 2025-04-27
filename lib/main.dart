import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:learn_driving/presentation/category/bloc/sub_category_cubit.dart';
import 'package:learn_driving/presentation/home/bloc/home_cubit.dart';
import 'core/routes/app_routes.dart';
import 'data/data_sources/remote_data_sources_imple.dart';
import 'data/local_data_sources/local_data_sources.dart';
import 'data/repositories/repositoires_impl.dart';
import 'firebase_options.dart';
import 'presentation/home/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize dependencies
    final remoteDataResources = RemoteResources();
    final resourcesRepository = ResourcesImplement(resourcesRepositories: remoteDataResources);
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(resourcesRepository),
        ),
        BlocProvider<CategoryCubit>(
          create: (context) => CategoryCubit(resourcesRepository),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppRoutes.route,
      ),
    );
  }
}
