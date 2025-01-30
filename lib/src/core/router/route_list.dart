part of 'router.dart';

final st = StorageServiceImpl();

int getCUrrentAcademicYear() {
  final today = DateTime.now();
  return today.month <= 6 ? today.year - 1 : today.year;
}

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
    builder: (context, state, navigationShell) {
      return BottomNavigationPage(child: navigationShell);
    },
    branches: [
      StatefulShellBranch(
        routes: [
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
];
