import 'package:feature_detail/details.dart';
import 'package:feature_home/homes.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (context, state) {
            return const DetailPage();
          },
        ),
      ],
    ),
  ],
);
