import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/resources/resources.dart';
import '../../../data/models/category_model.dart';
import '../../../repositories/resources_repositories.dart';
part 'home_state.dart';
part 'home_cubit.freezed.dart';


class HomeCubit extends Cubit<HomeState> {
  final ResourcesRepositories resourcesImplement;

  HomeCubit(this.resourcesImplement) : super(HomeState());

  List<int> catLen=[
    32,46,83,38,82,71,35,44,57,67,133,28,48,18
  ];

  /// Fetch categories
  Future<void> fetchCategories() async {
    emit(state.copyWith(resHomeState: const Resource.loading()));
    try {
      final categories = await resourcesImplement.getCategoryResources();
      emit(state.copyWith(resHomeState: Resource.success(data: categories)));
    } catch (e) {
      emit(state.copyWith(resHomeState: Resource.error(message: e.toString())));
    }
  }
}


