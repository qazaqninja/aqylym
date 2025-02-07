// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_text_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTextEntity _$GetTextEntityFromJson(Map<String, dynamic> json) {
  return _GetTextEntity.fromJson(json);
}

/// @nodoc
mixin _$GetTextEntity {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  List<ChoiceEntity> get choices => throw _privateConstructorUsedError;
  UsageEntity get usage => throw _privateConstructorUsedError;
  @JsonKey(name: 'system_fingerprint')
  String? get systemFingerprint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTextEntityCopyWith<GetTextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTextEntityCopyWith<$Res> {
  factory $GetTextEntityCopyWith(
          GetTextEntity value, $Res Function(GetTextEntity) then) =
      _$GetTextEntityCopyWithImpl<$Res, GetTextEntity>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<ChoiceEntity> choices,
      UsageEntity usage,
      @JsonKey(name: 'system_fingerprint') String? systemFingerprint});

  $UsageEntityCopyWith<$Res> get usage;
}

/// @nodoc
class _$GetTextEntityCopyWithImpl<$Res, $Val extends GetTextEntity>
    implements $GetTextEntityCopyWith<$Res> {
  _$GetTextEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
    Object? systemFingerprint = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceEntity>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageEntity,
      systemFingerprint: freezed == systemFingerprint
          ? _value.systemFingerprint
          : systemFingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageEntityCopyWith<$Res> get usage {
    return $UsageEntityCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetTextEntityImplCopyWith<$Res>
    implements $GetTextEntityCopyWith<$Res> {
  factory _$$GetTextEntityImplCopyWith(
          _$GetTextEntityImpl value, $Res Function(_$GetTextEntityImpl) then) =
      __$$GetTextEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<ChoiceEntity> choices,
      UsageEntity usage,
      @JsonKey(name: 'system_fingerprint') String? systemFingerprint});

  @override
  $UsageEntityCopyWith<$Res> get usage;
}

/// @nodoc
class __$$GetTextEntityImplCopyWithImpl<$Res>
    extends _$GetTextEntityCopyWithImpl<$Res, _$GetTextEntityImpl>
    implements _$$GetTextEntityImplCopyWith<$Res> {
  __$$GetTextEntityImplCopyWithImpl(
      _$GetTextEntityImpl _value, $Res Function(_$GetTextEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
    Object? systemFingerprint = freezed,
  }) {
    return _then(_$GetTextEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceEntity>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageEntity,
      systemFingerprint: freezed == systemFingerprint
          ? _value.systemFingerprint
          : systemFingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTextEntityImpl implements _GetTextEntity {
  const _$GetTextEntityImpl(
      {required this.id,
      required this.object,
      required this.created,
      required this.model,
      required final List<ChoiceEntity> choices,
      required this.usage,
      @JsonKey(name: 'system_fingerprint') this.systemFingerprint})
      : _choices = choices;

  factory _$GetTextEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTextEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  @override
  final String model;
  final List<ChoiceEntity> _choices;
  @override
  List<ChoiceEntity> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final UsageEntity usage;
  @override
  @JsonKey(name: 'system_fingerprint')
  final String? systemFingerprint;

  @override
  String toString() {
    return 'GetTextEntity(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage, systemFingerprint: $systemFingerprint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTextEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.systemFingerprint, systemFingerprint) ||
                other.systemFingerprint == systemFingerprint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices), usage, systemFingerprint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTextEntityImplCopyWith<_$GetTextEntityImpl> get copyWith =>
      __$$GetTextEntityImplCopyWithImpl<_$GetTextEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTextEntityImplToJson(
      this,
    );
  }
}

abstract class _GetTextEntity implements GetTextEntity {
  const factory _GetTextEntity(
      {required final String id,
      required final String object,
      required final int created,
      required final String model,
      required final List<ChoiceEntity> choices,
      required final UsageEntity usage,
      @JsonKey(name: 'system_fingerprint')
      final String? systemFingerprint}) = _$GetTextEntityImpl;

  factory _GetTextEntity.fromJson(Map<String, dynamic> json) =
      _$GetTextEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  String get model;
  @override
  List<ChoiceEntity> get choices;
  @override
  UsageEntity get usage;
  @override
  @JsonKey(name: 'system_fingerprint')
  String? get systemFingerprint;
  @override
  @JsonKey(ignore: true)
  _$$GetTextEntityImplCopyWith<_$GetTextEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
