import 'package:aqylym/src/core/services/storage/storage_service_impl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app/application.dart';
import 'src/app/imports.dart';
import 'src/core/services/injectable/injectable_service.dart';

final StorageServiceImpl storageService = StorageServiceImpl();
void main() async {
  await dotenv.load(fileName: 'lib/.env');
  try {
    // Ensure Flutter is initialized
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize storage service
    await storageService.init();
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // Initialize Firebase with options
    await Firebase.initializeApp();

    // Rest of your code
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    UIHelpers.statusBarTheme();
    await configureDependencies();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (_) {
        runApp(
          const ProviderScope(
            child: MainApp(
              flavor: AppFlavor.production,
            ),
          ),
        );
      },
    );
  } catch (e, stackTrace) {
    print('Initialization error: $e');
    print('Stack trace: $stackTrace');
    rethrow;
  }
}
