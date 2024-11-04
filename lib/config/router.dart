import 'package:go_router/go_router.dart';

import '../screens/create_profile_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/form',
      builder: (context, state) => ProfileFormScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) {
        final userData = state.extra as Map<String, dynamic>;
        return ProfileScreen(userData: userData);
      },
    ),
  ],
);
