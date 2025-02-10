// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTextEntityImpl _$$GetTextEntityImplFromJson(Map<String, dynamic> json) =>
    _$GetTextEntityImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: UsageEntity.fromJson(json['usage'] as Map<String, dynamic>),
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$$GetTextEntityImplToJson(_$GetTextEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
      'system_fingerprint': instance.systemFingerprint,
    };
