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
//               final roleNotifier = context.watch<RoleNotifier>();

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
//   GoRoute(
//     path: RoutePaths.teacherInsight,
//     pageBuilder: (context, GoRouterState state) {
//       return getPage(
//         child: TeacherInsightPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.teacherCertificate,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const CertificatePage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.teacherCertificateAdd,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const CertificateAddPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classTeacherInsight,
//     pageBuilder: (context, GoRouterState state) {
//       return getPage(
//         child: const ClassTeacherInsightPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.subjectQuality,
//     pageBuilder: (context, GoRouterState state) {
//       return getPage(
//         child: SubjectQualityPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.teacherReportTabBar,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const TeacherReportPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classRoomTeacherReportTabBar,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ClassroomTeacherReportPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.aboutChildFullReportDetail,
//     pageBuilder: (context, state) {
//       final params = Map<String, dynamic>.from(state.extra as Map<String, dynamic>);
//       return getPage(
//         child: AboutChildFullReport(
//           subject: params['subject'] as String?,
//           plannedReportId: params['plannedReportId'] as String,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classWeeklyReport,
//     pageBuilder: (context, state) {
//       final statusEntity = state.extra as StatusEntity;
//       return getPage(
//         child: TeacherWeeklyReportByClassPage(
//           statusEntity: statusEntity,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.studentWeeklyReport,
//     pageBuilder: (context, state) {
//       final statusEntity = state.extra as StatusEntity;
//       return getPage(
//         child: TeacherWeeklyReportByNamePage(
//           statusEntity: statusEntity,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classTeacherStudentWeeklyReport,
//     pageBuilder: (context, state) {
//       final statusEntity = state.extra as StatusEntity;
//       return getPage(
//         child: ClassTeacherWeeklyReportByNamePage(
//           statusEntity: statusEntity,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.studentFeedback,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const StudentFillFeedbackFormCard(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.teacherCalendar,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const TeacherReportCalendarPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classTeacherCalendar,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ClassTeacherReportCalendarPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.aboutChild,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const AboutChildPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.subjectWeeklyReport,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const TeacherWeeklyReportBySubjectPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classInsight,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ClassInsightPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classTeacherGradesJournal,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ClassTeacherGradesJournalWidget(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classTeacherJournalPage,
//     pageBuilder: (context, state) {
//       final params = state.extra as Map<String, dynamic>;
//       // final classEntity = params['classEntity'] as ClassEntity;
//       final classId = params['classId'] as String;
//       final subject = params['subject'] as String;
//       final courseId = params['courseId'] as String;
//       return getPage(
//         child: ClassTeacherJournalPage(
//           // classEntity: classEntity,
//           classId: classId,
//           courseId: courseId,
//           subject: subject,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classSubjectsList,
//     pageBuilder: (context, state) {
//       final params = state.extra as Map<String, dynamic>;
//       final classEntity = params['classEntity'] as ClassEntity;
//       final classArticle = params['classArticle'] as String;
//       final classGrade = params['classGrade'] as int;
//       return getPage(
//         child: ClassSubjectsListPage(
//           classEntity: classEntity,
//           classArticle: classArticle,
//           classGrade: classGrade,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classJournal,
//     pageBuilder: (context, state) {
//       final params = state.extra as Map<String, dynamic>;
//       final classEntity = params['classEntity'] as ClassEntity;
//       final subject = params['subject'] as String;
//       final courseId = params['courseId'] as String;
//       return getPage(
//         child: StudentsListJournalPage(
//           classEntity: classEntity,
//           subject: subject,
//           courseId: courseId,
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.classStudentsList,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ClassStudentsListPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.insightStory,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const StoriesPage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.createNews,
//     pageBuilder: (context, state) {
//       final VoidCallback? refreshPosts = state.extra as VoidCallback?;
//       return MaterialPage(
//         child: NewPublicationPage(
//           refreshPosts: refreshPosts ?? () {},
//         ),
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.grades,
//     pageBuilder: (context, state) {
//       final data = state.extra as Map<String, dynamic>;
//       return getPage(
//         child: GradesWidget(
//           studentId: data['studentId'],
//         ),
//         state: state,
//       );
//     },
//   ),
//   // GoRoute(
//   //   path: RoutePaths.classJournal,
//   //   pageBuilder: (context, state) {
//   //     final params = state.extra as Map<String, dynamic>;
//   //     final classEntity = params['classEntity'] as ClassEntity;
//   //     final subject = params['subject'] as String;
//   //     final courseId = params['courseId'] as String;
//   //     return getPage(
//   //       child: StudentsListJournalPage(
//   //         classEntity: classEntity,
//   //         subject: subject,
//   //         courseId: courseId,
//   //       ),
//   //       state: state,
//   //     );
//   //   },
//   // ),
//   GoRoute(
//       path: RoutePaths.gradesDetail,
//       pageBuilder: (context, GoRouterState state) {
//         final data = state.extra as Map<String, dynamic>;
//         return getPage(
//             child: GradesDetailPage(
//               title: data['title'],
//               courseId: data['courseId'],
//               studentId: data['studentId'],
//             ),
//             state: state);
//       }),
//   GoRoute(
//       path: RoutePaths.hexagonSetting,
//       pageBuilder: (context, GoRouterState state) {
//         return getPage(
//           child: QualityPage(),
//           state: state,
//         );
//       }),
//   GoRoute(
//       path: RoutePaths.advice,
//       pageBuilder: (context, GoRouterState state) {
//         final data = state.extra as Map<String, dynamic>;
//         return getPage(
//           child: AdvicePage(
//             content: data['content'],
//             createdAt: data['createdAt'],
//             expiredAt: data['expiredAt'],
//           ),
//           state: state,
//         );
//       }),
//   GoRoute(
//       path: RoutePaths.accountSetting,
//       pageBuilder: (context, GoRouterState state) {
//         return getPage(
//           child: const AccountSettingsPage(),
//           state: state,
//         );
//       }),
//   GoRoute(
//       path: RoutePaths.supportCenter,
//       pageBuilder: (context, GoRouterState state) {
//         return getPage(
//           child: const SupportCenterPage(),
//           state: state,
//         );
//       }),
//   GoRoute(
//     path: RoutePaths.profile,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const ProfilePage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.interface,
//     pageBuilder: (context, state) {
//       return getPage(
//         child: const InterfacePage(),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     path: RoutePaths.chatsMessage,
//     pageBuilder: (context, state) {
//       final data = state.extra as Map<String, dynamic>;
//       return getPage(
//         child: ChatMessagePage(
//           chatId: data['chatId'],
//           chatTitle: data['chatTitle'],
//         ),
//         state: state,
//       );
//     },
//   ),
//   GoRoute(
//     name: RouteNames.setNewPassword,
//     path: RoutePaths.setNewPassword,
//     pageBuilder: (context, state) => PageTransition.slideAndFade(
//       context: context,
//       state: state,
//       begin: const Offset(1.0, 0),
//       end: Offset.zero,
//       child: SetNewPasswordPage(
//         email: state.extra as String,
//       ),
//     ),
//   ),
//   GoRoute(
//     name: RouteNames.login,
//     path: RoutePaths.login,
//     builder: (context, GoRouterState state) {
//       return const LoginPage();
//     },
//     routes: [
//       GoRoute(
//         name: RouteNames.forgotPassword,
//         path: RoutePaths.forgotPassword,
//         pageBuilder: (context, state) => PageTransition.slideAndFade(
//           context: context,
//           state: state,
//           begin: const Offset(1.0, 0),
//           end: Offset.zero,
//           child: const ForgotPasswordPage(),
//         ),
//       ),
//     ],
//   ),
// ];
