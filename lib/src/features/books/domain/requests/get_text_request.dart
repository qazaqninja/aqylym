import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_text_request.freezed.dart';
part 'get_text_request.g.dart';

@freezed
class GetTextRequest extends BaseRequest with _$GetTextRequest {
  const factory GetTextRequest({
    @Default('gpt-3.5-turbo') String model,
    required List<Map<String, dynamic>> messages,
  }) = _GetTextRequest;

  factory GetTextRequest.fromJson(Map<String, dynamic> json) => _$GetTextRequestFromJson(json);
}
