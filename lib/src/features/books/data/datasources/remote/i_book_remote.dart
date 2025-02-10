import 'package:aqylym/src/features/books/domain/entities/get_text_entity.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../../core/exceptions/domain_exception.dart';

abstract class IBookRemote {
  Future<Either<DomainException, GetTextEntity>> getText(
    GetTextRequest request,
  );
}
