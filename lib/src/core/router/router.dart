import 'package:aqylym/src/features/books/books_detail_page.dart';
import 'package:aqylym/src/features/books/books_page.dart';
import 'package:aqylym/src/features/bottom_navigation/bottom_navigation_page.dart';
import 'package:aqylym/src/features/games/games_page.dart';
import 'package:aqylym/src/features/help/help_page.dart';
import 'package:aqylym/src/features/login/presentation/login_page.dart';
import 'package:aqylym/src/features/main/main_page.dart';
import 'package:aqylym/src/features/onboarding/presentation/onboarding_page.dart';
import 'package:aqylym/src/features/profile/profile_page.dart';
import 'package:aqylym/src/features/registration/presentation/registration_page.dart';
import 'package:aqylym/src/features/test/diagnostic_test_page.dart';
import 'package:aqylym/src/features/test/diagnostic_test_page_questions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/storage/storage_service_impl.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();

  return GoRouter(
    refreshListenable: st,
    initialLocation: RoutePaths.onboarding,
    debugLogDiagnostics: true,
    routes: _routes,
  );
}
