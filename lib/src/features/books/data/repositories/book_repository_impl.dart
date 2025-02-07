import 'package:aqylym/src/features/books/domain/repositories/i_book_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/entities/get_text_entity.dart';
import '../../domain/requests/get_text_request.dart';
import '../datasources/remote/book_remote_impl.dart';
import '../datasources/remote/i_book_remote.dart';

@named
@LazySingleton(as: IBookRepository)
class BookRepositoryImpl implements IBookRepository {
  final IBookRemote _bookImpl;
  BookRepositoryImpl(@Named.from(BookRemoteImpl) this._bookImpl);

  @override
  Future<Either<DomainException, GetTextEntity>> getText(GetTextRequest request) async {
    try {
      final requests = await _bookImpl.getText(request);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      final logger = Logger();
      logger.e(
        'Error occurred',
        error: e,
      );
      return Left(UnknownException(message: e.toString()));
    }
  }
}
