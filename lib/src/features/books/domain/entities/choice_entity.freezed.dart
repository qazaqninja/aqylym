// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoiceEntity _$ChoiceEntityFromJson(Map<String, dynamic> json) {
  return _ChoiceEntity.fromJson(json);
}

/// @nodoc
mixin _$ChoiceEntity {
  int get index => throw _privateConstructorUsedError;
  MessageEntity get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_reason')
  String get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceEntityCopyWith<ChoiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceEntityCopyWith<$Res> {
  factory $ChoiceEntityCopyWith(
          ChoiceEntity value, $Res Function(ChoiceEntity) then) =
      _$ChoiceEntityCopyWithImpl<$Res, ChoiceEntity>;
  @useResult
  $Res call(
      {int index,
      MessageEntity message,
      @JsonKey(name: 'finish_reason') String finishReason});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class _$ChoiceEntityCopyWithImpl<$Res, $Val extends ChoiceEntity>
    implements $ChoiceEntityCopyWith<$Res> {
  _$ChoiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get message {
    return $MessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceEntityImplCopyWith<$Res>
    implements $ChoiceEntityCopyWith<$Res> {
  factory _$$ChoiceEntityImplCopyWith(
          _$ChoiceEntityImpl value, $Res Function(_$ChoiceEntityImpl) then) =
      __$$ChoiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      MessageEntity message,
      @JsonKey(name: 'finish_reason') String finishReason});

  @override
  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChoiceEntityImplCopyWithImpl<$Res>
    extends _$ChoiceEntityCopyWithImpl<$Res, _$ChoiceEntityImpl>
    implements _$$ChoiceEntityImplCopyWith<$Res> {
  __$$ChoiceEntityImplCopyWithImpl(
      _$ChoiceEntityImpl _value, $Res Function(_$ChoiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_$ChoiceEntityImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceEntityImpl implements _ChoiceEntity {
  const _$ChoiceEntityImpl(
      {required this.index,
      required this.message,
      @JsonKey(name: 'finish_reason') required this.finishReason});

  factory _$ChoiceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceEntityImplFromJson(json);

  @override
  final int index;
  @override
  final MessageEntity message;
  @override
  @JsonKey(name: 'finish_reason')
  final String finishReason;

  @override
  String toString() {
    return 'ChoiceEntity(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceEntityImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceEntityImplCopyWith<_$ChoiceEntityImpl> get copyWith =>
      __$$ChoiceEntityImplCopyWithImpl<_$ChoiceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceEntityImplToJson(
      this,
    );
  }
}

abstract class _ChoiceEntity implements ChoiceEntity {
  const factory _ChoiceEntity(
          {required final int index,
          required final MessageEntity message,
          @JsonKey(name: 'finish_reason') required final String finishReason}) =
      _$ChoiceEntityImpl;

  factory _ChoiceEntity.fromJson(Map<String, dynamic> json) =
      _$ChoiceEntityImpl.fromJson;

  @override
  int get index;
  @override
  MessageEntity get message;
  @override
  @JsonKey(name: 'finish_reason')
  String get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceEntityImplCopyWith<_$ChoiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
