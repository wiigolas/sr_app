import 'package:sr_app/exports/exports.dart';

final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'program',
          builder: (BuildContext context, GoRouterState state) {
            return const ProgramScreen();
          },
        ),
      ],
    ),
  ],
);
