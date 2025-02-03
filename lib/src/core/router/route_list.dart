part of 'router.dart';

final st = StorageServiceImpl();

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

List<RouteBase> _routes = [
  StatefulShellRoute.indexedStack(
    redirect: (context, state) {
      return null;
    },
    builder: (context, state, navigationShell) {
      return BottomNavigationPage(
        child: navigationShell,
      );
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/',
            redirect: (context, state) => '/main',
          ),
          GoRoute(
            path: RoutePaths.main,
            pageBuilder: (context, state) => getPage(
              child: const MainPage(),
              state: state,
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.books,
            pageBuilder: (context, state) => getPage(
              child: const BooksPage(),
              state: state,
            ),
          ),
        ],
      ),
      // Second Tab - Games
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.games,
            pageBuilder: (context, state) => getPage(
              child: const GamesPage(),
              state: state,
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.profile,
            pageBuilder: (context, state) => getPage(
              child: const ProfilePage(),
              state: state,
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.help,
            pageBuilder: (context, state) => getPage(
              child: const HelpPage(),
              state: state,
            ),
          ),
        ],
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.test,
    pageBuilder: (context, state) => getPage(
      child: const DiagnosticTestPage(),
      state: state,
    ),
  ),
  GoRoute(
    path: RoutePaths.testQuestion,
    pageBuilder: (context, state) => getPage(
      child: const DiagnosticTestPageQuestions(),
      state: state,
    ),
  ),
  GoRoute(
    path: RoutePaths.onboarding,
    pageBuilder: (context, state) => getPage(
      child: const OnboardingPage(),
      state: state,
    ),
  ),
  GoRoute(
    path: RoutePaths.bookDetail,
    pageBuilder: (context, state) => getPage(
      child: const BooksDetailPage(),
      state: state,
    ),
  ),
  GoRoute(
    name: RouteNames.login,
    path: RoutePaths.login,
    builder: (context, GoRouterState state) {
      return const LoginPage();
    },
    routes: [
      GoRoute(
        name: RouteNames.registration,
        path: RoutePaths.registration,
        pageBuilder: (context, state) => PageTransition.slideAndFade(
          context: context,
          state: state,
          begin: const Offset(1.0, 0),
          end: Offset.zero,
          child: const RegistrationPage(),
        ),
      ),
    ],
  ),
];
