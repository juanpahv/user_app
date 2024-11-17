import 'package:go_router/go_router.dart';
import 'package:user_app/presentation/screens/create_profile/create_profile_screen.dart';
import 'package:user_app/presentation/screens/home/home_screen.dart';
import 'package:user_app/presentation/screens/profile/profile_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/create_profile",
    builder: (context, state) {
      return const CreateProfileScreen();
    },
  ),
  GoRoute(
    path: "/profile_screen",
    builder: (context, state) {
      return const ProfileScreen();
    },
  )
]);
