import 'package:aqylym/src/features/books/domain/entities/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_entity.freezed.dart';
part 'choice_entity.g.dart';

@freezed
class ChoiceEntity with _$ChoiceEntity {
  const factory ChoiceEntity({
    required int index,
    required MessageEntity message,
    @JsonKey(name: 'finish_reason') required String finishReason,
  }) = _ChoiceEntity;

  factory ChoiceEntity.fromJson(Map<String, dynamic> json) => _$ChoiceEntityFromJson(json);
}
