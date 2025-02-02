import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'storage_service.dart';

class StorageServiceImpl extends ChangeNotifier implements StorageService {
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();

  factory StorageServiceImpl() {
    return _instance;
  }

  StorageServiceImpl._internal();

  // Auth-related keys
  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _languageCode = 'LANGUAGE_CODE';
  static const String _onboardingKey = 'onboarding_complete';

  // Device-related keys
  static const String _clientIdKey = 'CLIENT_ID';

  Box? _authBox;
  late SharedPreferences _prefs;
  Box? _deviceBox;

  bool get isInitialized => _authBox != null && _deviceBox != null;

  // Getter for authBox that ensures initialization
  Box get authBox {
    if (_authBox == null) {
      throw StateError('StorageService not initialized. Call init() first.');
    }
    return _authBox!;
  }

  // Getter for deviceBox that ensures initialization
  Box get deviceBox {
    if (_deviceBox == null) {
      throw StateError('StorageService not initialized. Call init() first.');
    }
    return _deviceBox!;
  }

  @override
  Future<void> setClientId(String clientId) async {
    try {
      await deviceBox.put(_clientIdKey, clientId);
      debugPrint('Client ID saved successfully: $clientId');
    } catch (e) {
      debugPrint('Error saving client ID: $e');
      rethrow;
    }
  }

  @override
  String getClientId() {
    try {
      final clientId = deviceBox.get(_clientIdKey);
      debugPrint('Retrieved client ID: $clientId');
      return clientId ?? '';
    } catch (e) {
      debugPrint('Error getting client ID: $e');
      return '';
    }
  }

  @override
  Future<void> setToken(String? token) async {
    log('$token', name: 'ACCESS_TOKEN');
    await authBox.put(_tokenKey, token);
    notifyListeners();
  }

  @override
  Future<void> setRefreshToken(String? refreshToken) async {
    log('$refreshToken', name: 'REFRESH_TOKEN');
    await authBox.put(_refreshTokenKey, refreshToken);
    notifyListeners();
  }

  @override
  Future<void> setLanguageCode(String code) async {
    await authBox.put(_languageCode, code);
  }

  @override
  String? getToken() {
    return authBox.get(_tokenKey);
  }

  @override
  String? getRefreshToken() {
    return authBox.get(_refreshTokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await authBox.put(_tokenKey, null);
    notifyListeners();
  }

  @override
  Future<void> deleteRefreshToken() async {
    await authBox.put(_refreshTokenKey, null);
    notifyListeners();
  }

  @override
  String? getLanguageCode() {
    return authBox.get(_languageCode);
  }

  @override
  Future<void> clear() async {
    if (_authBox?.isOpen ?? false) {
      await _authBox!.clear();
      notifyListeners();
    }
  }

  @override
  Future<void> init() async {
    if (!isInitialized) {
      await Hive.initFlutter();
      _authBox = await Hive.openBox('auth');
      _deviceBox = await Hive.openBox('device');
      debugPrint('Storage service initialized successfully');
    }
  }

  @override
  Future<void> openBox() async {
    if (!isInitialized) {
      _authBox = await Hive.openBox('auth');
      _deviceBox = await Hive.openBox('device');
      debugPrint('Storage boxes opened successfully');
    }
  }

  @override
  bool checkLoggedIn() {
    return getToken() != null;
  }

  @override
  bool get isLoggedIn => checkLoggedIn();
}
