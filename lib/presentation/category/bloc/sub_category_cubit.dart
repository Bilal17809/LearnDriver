import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_driving/data/models/categoy_model/sub_category_model.dart';
import '../../../core/resources/resources.dart';
import '../../../repositories/resources_repositories.dart';

part 'sub_category_state.dart';
part 'sub_category_cubit.freezed.dart';

class CategoryCubit extends Cubit<Category> {
  final ResourcesRepositories resourcesImplement;

  CategoryCubit(this.resourcesImplement) : super(Category());

  /// Fetch categories
  Future<void> fetchSubCategories(int categoryId) async {
    emit(state.copyWith(isQuestion: const Resource.loading()));
    try {
      final categories = await resourcesImplement.getSubCategoryResources(categoryId);
      emit(state.copyWith(isQuestion: Resource.success(data: categories)));
    } catch (e) {
      emit(state.copyWith(isQuestion: Resource.error(message: e.toString())));
    }
  }
}

