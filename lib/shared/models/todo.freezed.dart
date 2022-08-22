// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  bool get completed => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) = _$TodoModelCopyWithImpl<$Res>;
  $Res call({bool completed, String title, int userId, int id});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  final TodoModel _value;
  // ignore: unused_field
  final $Res Function(TodoModel) _then;

  @override
  $Res call({
    Object? completed = freezed,
    Object? title = freezed,
    Object? userId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$$_TodoModelCopyWith(_$_TodoModel value, $Res Function(_$_TodoModel) then) = __$$_TodoModelCopyWithImpl<$Res>;
  @override
  $Res call({bool completed, String title, int userId, int id});
}

/// @nodoc
class __$$_TodoModelCopyWithImpl<$Res> extends _$TodoModelCopyWithImpl<$Res> implements _$$_TodoModelCopyWith<$Res> {
  __$$_TodoModelCopyWithImpl(_$_TodoModel _value, $Res Function(_$_TodoModel) _then) : super(_value, (v) => _then(v as _$_TodoModel));

  @override
  _$_TodoModel get _value => super._value as _$_TodoModel;

  @override
  $Res call({
    Object? completed = freezed,
    Object? title = freezed,
    Object? userId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_TodoModel(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoModel with DiagnosticableTreeMixin implements _TodoModel {
  const _$_TodoModel({this.completed = false, required this.title, required this.userId, required this.id});

  factory _$_TodoModel.fromJson(Map<String, dynamic> json) => _$$_TodoModelFromJson(json);

  @override
  @JsonKey()
  final bool completed;
  @override
  final String title;
  @override
  final int userId;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoModel(completed: $completed, title: $title, userId: $userId, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoModel'))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_TodoModel && const DeepCollectionEquality().equals(other.completed, completed) && const DeepCollectionEquality().equals(other.title, title) && const DeepCollectionEquality().equals(other.userId, userId) && const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(completed), const DeepCollectionEquality().hash(title), const DeepCollectionEquality().hash(userId), const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith => __$$_TodoModelCopyWithImpl<_$_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoModelToJson(
      this,
    );
  }
}

abstract class _TodoModel implements TodoModel {
  const factory _TodoModel({final bool completed, required final String title, required final int userId, required final int id}) = _$_TodoModel;

  factory _TodoModel.fromJson(Map<String, dynamic> json) = _$_TodoModel.fromJson;

  @override
  bool get completed;
  @override
  String get title;
  @override
  int get userId;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith => throw _privateConstructorUsedError;
}
