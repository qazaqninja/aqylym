import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_entity.freezed.dart';
part 'usage_entity.g.dart';

@freezed
class UsageEntity with _$UsageEntity {
  const factory UsageEntity({
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
  }) = _UsageEntity;

  factory UsageEntity.fromJson(Map<String, dynamic> json) => _$UsageEntityFromJson(json);
}
