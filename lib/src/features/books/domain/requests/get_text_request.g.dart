// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_text_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTextRequestImpl _$$GetTextRequestImplFromJson(Map<String, dynamic> json) =>
    _$GetTextRequestImpl(
      model: json['model'] as String? ?? 'gpt-3.5-turbo',
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      maxTokens: (json['max_tokens'] as num?)?.toInt() ?? 150,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      stop: json['stop'] as String? ?? null,
    );

Map<String, dynamic> _$$GetTextRequestImplToJson(
        _$GetTextRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
      'max_tokens': instance.maxTokens,
      'temperature': instance.temperature,
      'stop': instance.stop,
    };
