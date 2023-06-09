// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estate_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstateDataModel _$EstateDataModelFromJson(Map<String, dynamic> json) {
  return _EstateDataModel.fromJson(json);
}

/// @nodoc
mixin _$EstateDataModel {
  String get id => throw _privateConstructorUsedError;
  String? get appName => throw _privateConstructorUsedError;
  String? get appColor => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstateDataModelCopyWith<EstateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstateDataModelCopyWith<$Res> {
  factory $EstateDataModelCopyWith(
          EstateDataModel value, $Res Function(EstateDataModel) then) =
      _$EstateDataModelCopyWithImpl<$Res, EstateDataModel>;
  @useResult
  $Res call(
      {String id, String? appName, String? appColor, String? image, int count});
}

/// @nodoc
class _$EstateDataModelCopyWithImpl<$Res, $Val extends EstateDataModel>
    implements $EstateDataModelCopyWith<$Res> {
  _$EstateDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = freezed,
    Object? appColor = freezed,
    Object? image = freezed,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      appColor: freezed == appColor
          ? _value.appColor
          : appColor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EstateDataModelCopyWith<$Res>
    implements $EstateDataModelCopyWith<$Res> {
  factory _$$_EstateDataModelCopyWith(
          _$_EstateDataModel value, $Res Function(_$_EstateDataModel) then) =
      __$$_EstateDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? appName, String? appColor, String? image, int count});
}

/// @nodoc
class __$$_EstateDataModelCopyWithImpl<$Res>
    extends _$EstateDataModelCopyWithImpl<$Res, _$_EstateDataModel>
    implements _$$_EstateDataModelCopyWith<$Res> {
  __$$_EstateDataModelCopyWithImpl(
      _$_EstateDataModel _value, $Res Function(_$_EstateDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = freezed,
    Object? appColor = freezed,
    Object? image = freezed,
    Object? count = null,
  }) {
    return _then(_$_EstateDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      appColor: freezed == appColor
          ? _value.appColor
          : appColor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstateDataModel implements _EstateDataModel {
  const _$_EstateDataModel(
      {required this.id,
      this.appName,
      this.appColor,
      this.image,
      required this.count});

  factory _$_EstateDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EstateDataModelFromJson(json);

  @override
  final String id;
  @override
  final String? appName;
  @override
  final String? appColor;
  @override
  final String? image;
  @override
  final int count;

  @override
  String toString() {
    return 'EstateDataModel(id: $id, appName: $appName, appColor: $appColor, image: $image, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EstateDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appColor, appColor) ||
                other.appColor == appColor) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, appName, appColor, image, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EstateDataModelCopyWith<_$_EstateDataModel> get copyWith =>
      __$$_EstateDataModelCopyWithImpl<_$_EstateDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstateDataModelToJson(
      this,
    );
  }
}

abstract class _EstateDataModel implements EstateDataModel {
  const factory _EstateDataModel(
      {required final String id,
      final String? appName,
      final String? appColor,
      final String? image,
      required final int count}) = _$_EstateDataModel;

  factory _EstateDataModel.fromJson(Map<String, dynamic> json) =
      _$_EstateDataModel.fromJson;

  @override
  String get id;
  @override
  String? get appName;
  @override
  String? get appColor;
  @override
  String? get image;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_EstateDataModelCopyWith<_$_EstateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
