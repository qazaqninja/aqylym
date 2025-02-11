import 'dart:convert';

import 'package:aqylym/src/core/api/client/rest/dio/dio_client.dart';
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
  // final _headers = {
  //   'Content-Type': 'application/json',
  //   'Authorization':
  //       'Bearer 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',
  //   'Cookie':
  //       '__cf_bm=R_33dT2nMAU2cZbv8M6n9UfkXPuQA3UaoSVdKGDSxAc-1739184032-1.0.1.1-ZC7_Pi30nvBpzizIpSlKKtaLRE2TK8Mn.zT1z4yACkb6_XzDbCVB.miHpsfboLefXJnn4kW8wGhVzbq_LumvNQ; _cfuvid=GLbJWdVKXbYyXL7ivpEyNz4wSxar00FPyAutI2fxx1I-1739184032459-0.0.1.1-604800000'
  // };

  @override
  Future<Either<DomainException, GetTextEntity>> getText(GetTextRequest request) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer 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',
    };

    var dio = Dio();
    var response = await dio.post(
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
