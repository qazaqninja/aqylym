// part of 'router.dart';

// final st = StorageServiceImpl();

// int getCUrrentAcademicYear() {
//   final today = DateTime.now();
//   return today.month <= 6 ? today.year - 1 : today.year;
// }

// Page getPage({
//   required Widget child,
//   required GoRouterState state,
// }) {
//   return MaterialPage(
//     maintainState: false,
//     key: state.pageKey,
//     child: child,
//   );
// }

// List<RouteBase> _routes = [
//   StatefulShellRoute.indexedStack(
//     builder: (context, state, navigationShell) {
//       return BottomNavigationPage(child: navigationShell);
//     },
//     branches: [
//       // First Tab - Role-specific content
//       StatefulShellBranch(
//         routes: [
//           GoRoute(
//             path: '/',
//             redirect: (context, state) => '/insights',
//           ),
//           GoRoute(
//             path: '/insights',
//             pageBuilder: (context, state) {
//               // Role-specific page routing
//               switch (roleNotifier.currentRole) {
//                 case 'teacher':
//                   return getPage(child: TeacherInsightPage(), state: state);
//                 case 'classroomTeacher':
//                   return getPage(child: const ClassTeacherInsightPage(), state: state);
//                 case 'parent':
//                   return getPage(child: const InsightsPage(), state: state);
//                 default:
//                   return getPage(child: const InsightsPage(), state: state);
//               }
//             },
//           ),
//           // Add additional role-specific routes here if needed
//           GoRoute(
//             path: '/teacher-insight',
//             pageBuilder: (context, state) => getPage(
//               child: TeacherInsightPage(),
//               state: state,
//             ),
//           ),
//           GoRoute(
//             path: '/classroom-teacher-insight',
//             pageBuilder: (context, state) => getPage(
//               child: const ClassTeacherInsightPage(),
//               state: state,
//             ),
//           ),
//         ],
//       ),
//       // Second Tab - News (Common for all roles)
//       StatefulShellBranch(
//         routes: [
//           GoRoute(
//             path: RoutePaths.news,
//             pageBuilder: (context, state) => getPage(
//               child: const NewsPage(),
//               state: state,
//             ),
//           ),
//         ],
//       ),
//       // Third Tab - Chats (Common for all roles)
//       StatefulShellBranch(
//         routes: [
//           GoRoute(
//             path: RoutePaths.chats,
//             pageBuilder: (context, state) => getPage(
//               child: const ChatPage(),
//               state: state,
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
// ];
