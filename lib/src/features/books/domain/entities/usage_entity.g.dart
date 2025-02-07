// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageEntityImpl _$$UsageEntityImplFromJson(Map<String, dynamic> json) =>
    _$UsageEntityImpl(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$$UsageEntityImplToJson(_$UsageEntityImpl instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
