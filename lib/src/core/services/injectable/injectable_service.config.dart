// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/books/data/datasources/remote/book_remote_impl.dart'
    as _i5;
import '../../../features/books/data/datasources/remote/i_book_remote.dart'
    as _i4;
import '../../../features/books/data/repositories/book_repository_impl.dart'
    as _i7;
import '../../../features/books/domain/repositories/i_book_repository.dart'
    as _i6;
import '../../../features/books/domain/usecases/get_text_use_case.dart' as _i8;
import '../../api/client/rest/dio/dio_client.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.DioRestClient>(
      () {
        final i = _i3.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i4.IBookRemote>(
      () => _i5.BookRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'BookRemoteImpl',
    );
    gh.lazySingleton<_i6.IBookRepository>(
      () => _i7.BookRepositoryImpl(
          gh<_i4.IBookRemote>(instanceName: 'BookRemoteImpl')),
      instanceName: 'BookRepositoryImpl',
    );
    gh.lazySingleton<_i8.GetTextUseCase>(() => _i8.GetTextUseCase(
        gh<_i6.IBookRepository>(instanceName: 'BookRepositoryImpl')));
    return this;
  }
}
