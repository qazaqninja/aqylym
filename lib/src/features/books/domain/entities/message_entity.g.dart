// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageEntityImpl _$$MessageEntityImplFromJson(Map<String, dynamic> json) =>
    _$MessageEntityImpl(
      role: json['role'] as String,
      content: json['content'] as String,
      refusal: json['refusal'] as String?,
    );

Map<String, dynamic> _$$MessageEntityImplToJson(_$MessageEntityImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'refusal': instance.refusal,
    };
