import 'package:aqylym/src/features/books/data/repositories/book_repository_impl.dart';
import 'package:aqylym/src/features/books/domain/entities/get_text_entity.dart';
import 'package:aqylym/src/features/books/domain/repositories/i_book_repository.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetTextUseCase extends UseCase<GetTextEntity, GetTextRequest> {
  final IBookRepository _repository;

  GetTextUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetTextEntity>> execute(GetTextRequest requestModel) {
    return _repository.getText(requestModel);
  }
}
