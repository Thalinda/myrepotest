import 'package:boillerplt_v2/screens/dashboard/dashboard.dart';
import 'package:boillerplt_v2/screens/forgotpassword/forgotpassword.dart';
import 'package:boillerplt_v2/screens/login/login_screen.dart';
import 'package:boillerplt_v2/screens/resetpassword/resetpassword.dart';
import 'package:boillerplt_v2/screens/verificationcode/verificationcode.dart';
import 'package:get/get.dart';

class Routes {
// TODO Implement this library.class Routes {
  Routes._();

  static const String login = '/';
  static const String dahboard = "/dash";
  static const String forgotpassword = "/frgtpwd";
  static const String verificationcode = "/verifcatoncode";
  static const String resetpassowrd = "/restpassword";

  static const String initialRoute = verificationcode;
  static final routes = [
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.dahboard, page: () => const DashboardScreen()),
    GetPage(
        name: Routes.forgotpassword, page: () => const ForgotPasswordScreen()),
    GetPage(name: Routes.resetpassowrd, page: () => const RestPassowrd()),
    GetPage(
        name: Routes.verificationcode,
        page: () => const VerificationCodeScreen())
  ];
}
