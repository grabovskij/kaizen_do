// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTodoModel _$CreateTodoModelFromJson(Map<String, dynamic> json) {
  return _CreateTodoModel.fromJson(json);
}

/// @nodoc
mixin _$CreateTodoModel {
  String get title => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTodoModelCopyWith<CreateTodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoModelCopyWith<$Res> {
  factory $CreateTodoModelCopyWith(
          CreateTodoModel value, $Res Function(CreateTodoModel) then) =
      _$CreateTodoModelCopyWithImpl<$Res, CreateTodoModel>;
  @useResult
  $Res call({String title, int done});
}

/// @nodoc
class _$CreateTodoModelCopyWithImpl<$Res, $Val extends CreateTodoModel>
    implements $CreateTodoModelCopyWith<$Res> {
  _$CreateTodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTodoModelImplCopyWith<$Res>
    implements $CreateTodoModelCopyWith<$Res> {
  factory _$$CreateTodoModelImplCopyWith(_$CreateTodoModelImpl value,
          $Res Function(_$CreateTodoModelImpl) then) =
      __$$CreateTodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int done});
}

/// @nodoc
class __$$CreateTodoModelImplCopyWithImpl<$Res>
    extends _$CreateTodoModelCopyWithImpl<$Res, _$CreateTodoModelImpl>
    implements _$$CreateTodoModelImplCopyWith<$Res> {
  __$$CreateTodoModelImplCopyWithImpl(
      _$CreateTodoModelImpl _value, $Res Function(_$CreateTodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? done = null,
  }) {
    return _then(_$CreateTodoModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTodoModelImpl
    with DiagnosticableTreeMixin
    implements _CreateTodoModel {
  const _$CreateTodoModelImpl({required this.title, required this.done});

  factory _$CreateTodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTodoModelImplFromJson(json);

  @override
  final String title;
  @override
  final int done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTodoModel(title: $title, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTodoModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoModelImplCopyWith<_$CreateTodoModelImpl> get copyWith =>
      __$$CreateTodoModelImplCopyWithImpl<_$CreateTodoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTodoModelImplToJson(
      this,
    );
  }
}

abstract class _CreateTodoModel implements CreateTodoModel {
  const factory _CreateTodoModel(
      {required final String title,
      required final int done}) = _$CreateTodoModelImpl;

  factory _CreateTodoModel.fromJson(Map<String, dynamic> json) =
      _$CreateTodoModelImpl.fromJson;

  @override
  String get title;
  @override
  int get done;
  @override
  @JsonKey(ignore: true)
  _$$CreateTodoModelImplCopyWith<_$CreateTodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
