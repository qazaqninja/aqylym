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
    );

Map<String, dynamic> _$$GetTextRequestImplToJson(
        _$GetTextRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
    };
