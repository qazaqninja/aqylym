import 'package:aqylym/src/core/services/injectable/service_register_proxy.dart';
import 'package:aqylym/src/features/books/domain/usecases/get_text_use_case.dart';
import 'package:aqylym/src/features/books/presentation/bloc/book_bloc.dart';

import '../../../features/settings/presentation/bloc/settings_bloc.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc<SettingsBloc>(
    factory: false,
    () => SettingsBloc(),
  );
  getIt.registerBloc<BookBloc>(
    factory: false,
    () => BookBloc(
      getIt<GetTextUseCase>(),
    ),
  );
}
