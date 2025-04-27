part of 'sub_category_cubit.dart';

@freezed
class Category with _$Category {
  const factory Category({
    @Default(Resource.initial()) Resource<List<Question>> isQuestion,
  }) = _SubCategoryState;
}
