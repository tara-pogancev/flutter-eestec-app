import 'package:eestec_app/features/event_details/ui/event_details_screen.dart';
import 'package:eestec_app/features/events/ui/events_screen.dart';
import 'package:eestec_app/features/home/ui/home_screen.dart';
import 'package:eestec_app/features/login/ui/login_screen.dart';
import 'package:eestec_app/features/notifications/ui/notifications_screen.dart';
import 'package:eestec_app/features/profile/ui/profile_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router([String? initialLocation]) => GoRouter(
        routes: [
          GoRoute(
              path: Routes.login,
              builder: (_, __) {
                return const LoginScreen();
              }),
          GoRoute(
            path: Routes.events,
            builder: (_, __) {
              return const EventsScreen();
            },
          ),
          GoRoute(
            path: Routes.eventDetails,
            builder: (_, __) {
              return const EventDetailsScreen();
            },
          ),
          GoRoute(
            path: Routes.home,
            builder: (_, __) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: Routes.notifications,
            builder: (_, __) {
              return const NotificationsScreen();
            },
          ),
          GoRoute(
            path: Routes.profile,
            builder: (_, __) {
              return const ProfileScreen();
            },
          ),
        ],
        initialLocation: initialLocation ?? Routes.login,
      );
}

class Routes {
  static const login = '/login';
  static const events = '/events';
  static const eventDetails = '/eventDetails';
  static const home = '/home';
  static const profile = '/profile';
  static const notifications = '/notifications';
}
