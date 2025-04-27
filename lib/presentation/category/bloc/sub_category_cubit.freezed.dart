// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Category {
  Resource<List<Question>> get isQuestion => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({Resource<List<Question>> isQuestion});

  $ResourceCopyWith<List<Question>, $Res> get isQuestion;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuestion = null,
  }) {
    return _then(_value.copyWith(
      isQuestion: null == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as Resource<List<Question>>,
    ) as $Val);
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResourceCopyWith<List<Question>, $Res> get isQuestion {
    return $ResourceCopyWith<List<Question>, $Res>(_value.isQuestion, (value) {
      return _then(_value.copyWith(isQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubCategoryStateImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$SubCategoryStateImplCopyWith(_$SubCategoryStateImpl value,
          $Res Function(_$SubCategoryStateImpl) then) =
      __$$SubCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Resource<List<Question>> isQuestion});

  @override
  $ResourceCopyWith<List<Question>, $Res> get isQuestion;
}

/// @nodoc
class __$$SubCategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$SubCategoryStateImpl>
    implements _$$SubCategoryStateImplCopyWith<$Res> {
  __$$SubCategoryStateImplCopyWithImpl(_$SubCategoryStateImpl _value,
      $Res Function(_$SubCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuestion = null,
  }) {
    return _then(_$SubCategoryStateImpl(
      isQuestion: null == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as Resource<List<Question>>,
    ));
  }
}

/// @nodoc

class _$SubCategoryStateImpl implements _SubCategoryState {
  const _$SubCategoryStateImpl({this.isQuestion = const Resource.initial()});

  @override
  @JsonKey()
  final Resource<List<Question>> isQuestion;

  @override
  String toString() {
    return 'Category(isQuestion: $isQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryStateImpl &&
            (identical(other.isQuestion, isQuestion) ||
                other.isQuestion == isQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isQuestion);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      __$$SubCategoryStateImplCopyWithImpl<_$SubCategoryStateImpl>(
          this, _$identity);
}

abstract class _SubCategoryState implements Category {
  const factory _SubCategoryState({final Resource<List<Question>> isQuestion}) =
      _$SubCategoryStateImpl;

  @override
  Resource<List<Question>> get isQuestion;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
