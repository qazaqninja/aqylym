// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_text_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTextRequest _$GetTextRequestFromJson(Map<String, dynamic> json) {
  return _GetTextRequest.fromJson(json);
}

/// @nodoc
mixin _$GetTextRequest {
  String get model => throw _privateConstructorUsedError;
  List<Map<String, String>> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTextRequestCopyWith<GetTextRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTextRequestCopyWith<$Res> {
  factory $GetTextRequestCopyWith(
          GetTextRequest value, $Res Function(GetTextRequest) then) =
      _$GetTextRequestCopyWithImpl<$Res, GetTextRequest>;
  @useResult
  $Res call({String model, List<Map<String, String>> messages});
}

/// @nodoc
class _$GetTextRequestCopyWithImpl<$Res, $Val extends GetTextRequest>
    implements $GetTextRequestCopyWith<$Res> {
  _$GetTextRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTextRequestImplCopyWith<$Res>
    implements $GetTextRequestCopyWith<$Res> {
  factory _$$GetTextRequestImplCopyWith(_$GetTextRequestImpl value,
          $Res Function(_$GetTextRequestImpl) then) =
      __$$GetTextRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, List<Map<String, String>> messages});
}

/// @nodoc
class __$$GetTextRequestImplCopyWithImpl<$Res>
    extends _$GetTextRequestCopyWithImpl<$Res, _$GetTextRequestImpl>
    implements _$$GetTextRequestImplCopyWith<$Res> {
  __$$GetTextRequestImplCopyWithImpl(
      _$GetTextRequestImpl _value, $Res Function(_$GetTextRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_$GetTextRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTextRequestImpl implements _GetTextRequest {
  const _$GetTextRequestImpl(
      {this.model = 'gpt-3.5-turbo',
      required final List<Map<String, String>> messages})
      : _messages = messages;

  factory _$GetTextRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTextRequestImplFromJson(json);

  @override
  @JsonKey()
  final String model;
  final List<Map<String, String>> _messages;
  @override
  List<Map<String, String>> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'GetTextRequest(model: $model, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTextRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, model, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTextRequestImplCopyWith<_$GetTextRequestImpl> get copyWith =>
      __$$GetTextRequestImplCopyWithImpl<_$GetTextRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTextRequestImplToJson(
      this,
    );
  }
}

abstract class _GetTextRequest implements GetTextRequest {
  const factory _GetTextRequest(
          {final String model,
          required final List<Map<String, String>> messages}) =
      _$GetTextRequestImpl;

  factory _GetTextRequest.fromJson(Map<String, dynamic> json) =
      _$GetTextRequestImpl.fromJson;

  @override
  String get model;
  @override
  List<Map<String, String>> get messages;
  @override
  @JsonKey(ignore: true)
  _$$GetTextRequestImplCopyWith<_$GetTextRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
