import 'package:aqylym/src/core/services/storage/storage_service_impl.dart';

import 'src/app/application.dart';
import 'src/app/imports.dart';
import 'src/core/services/injectable/injectable_service.dart';

final StorageServiceImpl storageService = StorageServiceImpl();
void main() async {
  // Widget tree binding
  await storageService.init();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Prevent native splash screen from disappearing
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Set status bar theme
  UIHelpers.statusBarTheme();

  // Initialize dependencies
  await configureDependencies();

  // Prevent landscape mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        // Riverpod ProviderScope for state management
        const ProviderScope(
          child: MainApp(
            flavor: AppFlavor.production,
          ),
        ),
      );
    },
  );
}
