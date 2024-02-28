// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadTodoModel _$ReadTodoModelFromJson(Map<String, dynamic> json) {
  return _ReadTodoModel.fromJson(json);
}

/// @nodoc
mixin _$ReadTodoModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadTodoModelCopyWith<ReadTodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadTodoModelCopyWith<$Res> {
  factory $ReadTodoModelCopyWith(
          ReadTodoModel value, $Res Function(ReadTodoModel) then) =
      _$ReadTodoModelCopyWithImpl<$Res, ReadTodoModel>;
  @useResult
  $Res call({int id, String title, int done});
}

/// @nodoc
class _$ReadTodoModelCopyWithImpl<$Res, $Val extends ReadTodoModel>
    implements $ReadTodoModelCopyWith<$Res> {
  _$ReadTodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ReadTodoModelImplCopyWith<$Res>
    implements $ReadTodoModelCopyWith<$Res> {
  factory _$$ReadTodoModelImplCopyWith(
          _$ReadTodoModelImpl value, $Res Function(_$ReadTodoModelImpl) then) =
      __$$ReadTodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, int done});
}

/// @nodoc
class __$$ReadTodoModelImplCopyWithImpl<$Res>
    extends _$ReadTodoModelCopyWithImpl<$Res, _$ReadTodoModelImpl>
    implements _$$ReadTodoModelImplCopyWith<$Res> {
  __$$ReadTodoModelImplCopyWithImpl(
      _$ReadTodoModelImpl _value, $Res Function(_$ReadTodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? done = null,
  }) {
    return _then(_$ReadTodoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ReadTodoModelImpl
    with DiagnosticableTreeMixin
    implements _ReadTodoModel {
  const _$ReadTodoModelImpl({this.id = 0, this.title = '', this.done = 0});

  factory _$ReadTodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadTodoModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReadTodoModel(id: $id, title: $title, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReadTodoModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadTodoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadTodoModelImplCopyWith<_$ReadTodoModelImpl> get copyWith =>
      __$$ReadTodoModelImplCopyWithImpl<_$ReadTodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadTodoModelImplToJson(
      this,
    );
  }
}

abstract class _ReadTodoModel implements ReadTodoModel {
  const factory _ReadTodoModel(
      {final int id, final String title, final int done}) = _$ReadTodoModelImpl;

  factory _ReadTodoModel.fromJson(Map<String, dynamic> json) =
      _$ReadTodoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get done;
  @override
  @JsonKey(ignore: true)
  _$$ReadTodoModelImplCopyWith<_$ReadTodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
