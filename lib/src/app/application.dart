import 'dart:async';

import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/base/base_bloc/bloc/base_bloc_widget.dart';
import '../core/localization/generated/l10n.dart';
import '../core/router/router.dart';
import '../core/services/injectable/injectable_service.dart';
import '../core/services/storage/storage_service_impl.dart';
import '../core/theme/theme.dart';
import '../features/settings/presentation/bloc/settings_bloc.dart';
import 'imports.dart';

part 'flavor_builds.dart';

class MainApp extends ConsumerWidget {
  const MainApp({
    required this.flavor,
    super.key,
  });

  final AppFlavor flavor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StorageServiceImpl st = StorageServiceImpl();
    // Remove native splash screen after 2 seconds
    Timer(
      const Duration(seconds: 2),
      FlutterNativeSplash.remove,
    );
    // MaterialApp with ScreenUtilInit for responsive UI
    return BaseBlocWidget<SettingsBloc, SettingsEvent, SettingsState>(
      bloc: getIt<SettingsBloc>(),
      starterEvent: const SettingsEvent.retrieve(),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () {
            st.setLanguageCode('ru');
            return _buildApp(
              flavor,
              routerProvider(),
              'ru',
            );
          },
          done: (viewModel) {
            return _buildApp(
              flavor,
              routerProvider(),
              viewModel.languageCode,
            );
          },
        );
      },
    );
  }
}
