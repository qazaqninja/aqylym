import 'package:aqylym/src/features/books/domain/entities/choice_entity.dart';
import 'package:aqylym/src/features/books/domain/entities/usage_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_text_entity.freezed.dart';
part 'get_text_entity.g.dart';

@freezed
class GetTextEntity with _$GetTextEntity {
  const factory GetTextEntity({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<ChoiceEntity> choices,
    required UsageEntity usage,
    @JsonKey(name: 'system_fingerprint') String? systemFingerprint,
  }) = _GetTextEntity;

  factory GetTextEntity.fromJson(Map<String, dynamic> json) => _$GetTextEntityFromJson(json);
}
