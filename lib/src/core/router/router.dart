import 'package:aqylym/src/features/onboarding/presentation/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/storage/storage_service_impl.dart';

// part 'route_list.dart';
// part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    maintainState: false,
    key: state.pageKey,
    child: child,
  );
}

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();

  return GoRouter(
    refreshListenable: st,
    initialLocation: RoutePaths.login,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutePaths.login,
        pageBuilder: (context, state) {
          return getPage(
            child: const OnboardingPage(),
            state: state,
          );
        },
      ),
    ],
  );
}
