import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/resources/resources.dart';
import '../../../core/routes/type_safe_route.dart';
import '../../../core/widgets/card_tile.dart';
import '../../../core/widgets/shimmer.dart';
import '../../../data/models/category_model.dart';
import '../bloc/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.resHomeState is ResourceLoading) {
            return ListView.builder(
              itemCount: 6, // Placeholder count
              itemBuilder: (context, index) => const ShimmerTile(),
            );
          }
          else {
            final categories = (state.resHomeState as ResourceSuccess<List<Category>>).data;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final catLen=context.read<HomeCubit>().catLen[index];
                  return CategoryTile(
                    category: category,
                    subCategoryCount:catLen,
                    onTap: () {
                      CategoryPageRoute(
                        name: category.name,
                        categoryId: category.id,
                        catLen: catLen,
                      ).push(context);
                    }, index: index,
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
