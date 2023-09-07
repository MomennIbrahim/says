import 'package:go_router/go_router.dart';
import 'package:says_app/features/layout/presentation/views/layout_view.dart';
import 'package:says_app/features/settings/presentation/views/account_info_view.dart';
import 'package:says_app/features/settings/presentation/views/change_email__address_view.dart';
import 'package:says_app/features/settings/presentation/views/change_password_view.dart';
import 'package:says_app/features/splash/views/splash_view.dart';

abstract class AppRouter {

  static String kLayoutView = '/kLayoutView';
  static String kAccountInfoView = '/kAccountInfoView';
  static String kChangeEmailAddressView = '/kChangeEmailAddressView';
  static String kChangePasswordView = '/kChangePasswordView';

  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),

    GoRoute(
        path: kLayoutView,
        builder: (context, state) {
          return const LayoutView();
        }),

    GoRoute(
        path: kAccountInfoView,
        builder: (context, state) {
          return const AccountInfoView();
        }),

    GoRoute(
        path: kChangeEmailAddressView,
        builder: (context, state) {
          return const ChangeEmailAddressView();
        }),

    GoRoute(
        path: kChangePasswordView,
        builder: (context, state) {
          return const ChangePasswordView();
        }),
  ]);
}
