part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Resource.initial()) Resource<List<Category>> resHomeState,
  }) = _HomeState;
}

