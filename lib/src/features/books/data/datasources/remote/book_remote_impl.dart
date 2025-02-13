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

    var dio = Dio();
    var response = await dio.request(
      'https://api.openai.com/v1/chat/completions',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: request.toJson(),
    );

    if (response.statusCode == 200) {
      print(json.encode(response.data));
      return Right(GetTextEntity.fromJson(response.data));
    } else {
      print(response.statusMessage);
      return Left(UnknownException(message: 'Request failed'));
    }

    //   try {
    //     log(EnvironmentConfig.OPENAI_API_KEY);
    //     final response = await client.post(
    //       'https://api.openai.com/v1/chat/completions',
    //       data: json.encode(request.toJson()),
    //       options: Options(headers: _headers, method: 'POST'),
    //     );

    //     return response.fold(
    //       (error) => Left(error),
    //       (result) {
    //         if (result.statusCode == 200) {
    //           try {
    //             return Right(GetTextEntity.fromJson(result.data));
    //           } catch (e) {
    //             return Left(UnknownException(message: 'Failed to parse response: $e'));
    //           }
    //         } else {
    //           return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
    //         }
    //       },
    //     );
    //   } catch (e) {
    //     return Left(UnknownException(message: 'Request failed: $e'));
    //   }
    // }
  }
}
