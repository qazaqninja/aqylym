import 'package:aqylym/src/core/services/injectable/service_register_proxy.dart';

import '../../../features/settings/presentation/bloc/settings_bloc.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc<SettingsBloc>(
    factory: false,
    () => SettingsBloc(),
  );
}
