import 'dart:convert';

import 'package:aqylym/src/core/api/client/rest/dio/dio_client.dart';
import 'package:aqylym/src/core/env/environment_config.dart';
import 'package:aqylym/src/core/exceptions/domain_exception.dart';
import 'package:aqylym/src/features/books/data/datasources/remote/i_book_remote.dart';
import 'package:aqylym/src/features/books/domain/entities/get_text_entity.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IBookRemote)
class BookRemoteImpl implements IBookRemote {
  BookRemoteImpl(this.client);

  final DioRestClient client;

  @override
  Future<Either<DomainException, GetTextEntity>> getText(GetTextRequest request) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${EnvironmentConfig.OPENAI_API_KEY}',
    };

    var response = await client.post(
      'https://api.openai.com/v1/chat/completions',
      data: request.toJson(),
      options: Options(
        method: 'POST',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          print(jsonEncode(request.toJson()));
          print(json.encode(result.data));
          return Right(GetTextEntity.fromJson(result.data));
        } else {
          print(result.statusMessage);
          return Left(UnknownException(message: 'Request failed'));
        }
      },
    );
  }
}
