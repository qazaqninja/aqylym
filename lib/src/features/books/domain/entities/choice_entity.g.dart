// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceEntityImpl _$$ChoiceEntityImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceEntityImpl(
      index: (json['index'] as num).toInt(),
      message: MessageEntity.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$ChoiceEntityImplToJson(_$ChoiceEntityImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
    };
