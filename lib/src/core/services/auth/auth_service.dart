import 'package:aqylym/src/core/services/storage/storage_service_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthNotifier extends ChangeNotifier {
  final StorageServiceImpl _storageService;

  AuthNotifier(this._storageService) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        await _storageService.deleteToken();
        await _storageService.deleteRefreshToken();
      } else {
        final token = await user.getIdToken();
        await _storageService.setToken(token);
      }
      notifyListeners();
    });

    // Listen to token refresh events
    FirebaseAuth.instance.idTokenChanges().listen((User? user) async {
      if (user != null) {
        final token = await user.getIdToken();
        await _storageService.setToken(token);
        notifyListeners();
      }
    });
  }

  bool get isAuthenticated {
    final user = FirebaseAuth.instance.currentUser;
    final hasToken = _storageService.getToken() != null;
    return user != null && hasToken;
  }
}
