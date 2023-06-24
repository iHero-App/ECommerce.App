import 'package:ecommerce/Shared/Binding/complete_profile_binding.dart';
import 'package:ecommerce/Shared/Binding/forgetpassword_binding.dart';
import 'package:ecommerce/Shared/Binding/home_binding.dart';
import 'package:ecommerce/Shared/Binding/login_binding.dart';
import 'package:ecommerce/Shared/Binding/onboarding_binding.dart';
import 'package:ecommerce/Shared/Binding/signup_binding.dart';
import 'package:ecommerce/View/CompleteProfile/complete_profile_page.dart';
import 'package:ecommerce/View/ForgotPassword/forgot_password_page.dart';
import 'package:ecommerce/View/Login/login_page.dart';
import 'package:ecommerce/View/OnBoarding/onboarding_page.dart';
import 'package:ecommerce/View/SignUp/signup_page.dart';
import 'package:ecommerce/View/home/home_page.dart';
import 'package:get/get.dart';

class BaseRoute {
  static List<GetPage> pages() => [
        _getPage(
          name: PageTo.home,
          page: HomePage(),
          binding: HomeBinding(),
        ),
        // _getPage(
        //   name: PageTo.loading,
        //   page: const LoadingPage(),
        //   binding: BindingLoading(),
        // ),
        _getPage(
          name: PageTo.onboarding,
          page: const OnBoardingPage(),
          binding: BindingOnBoarding(),
        ),
        // _getPage(
        //   name: PageTo.getStart,
        //   page: const GetStartPage(),
        //   binding: BindingGetStart(),
        // ),
        _getPage(
          name: PageTo.login,
          page: LoginPage(),
          binding: LoginBinding(),
        ),
        _getPage(
          name: PageTo.forgotPassword,
          page: ForgotPasswordPage(),
          binding: ForgetPasswordBinding(),
        ),
        // _getPage(
        //   transitionScreen: Transition.rightToLeft,
        //   name: PageTo.codeToConfirmEmail,
        //   page: CodeToConfirmEmailPage(),
        //   binding: BindingCodeToConfirmEmail(),
        // ),
        _getPage(
          transitionScreen: Transition.rightToLeft,
          name: PageTo.signup,
          page: SignUpPage(),
          binding: SignUpBinding(),
        ),
        // _getPage(
        //   transitionScreen: Transition.rightToLeft,
        //   name: PageTo.continueCreateToEmail,
        //   page: const ContinueCreateToEmailPage(),
        //   binding: BindingContinueCreateToEmail(),
        // ),
        _getPage(
          transitionScreen: Transition.rightToLeft,
          name: PageTo.completeprofile,
          page: CompleteProfilePage(),
          binding: CompleteProfileBinding(),
        ),
      ];

  static GetPage _getPage({
    required var name,
    required var page,
    Bindings? binding,
    Transition transitionScreen = Transition.leftToRight,
  }) =>
      GetPage(
        name: name,
        page: () => page,
        // ignore: unnecessary_null_in_if_null_operators
        binding: binding ?? null,
        transition: transitionScreen,
        transitionDuration: const Duration(milliseconds: 400),
      );
}

class PageTo {
  static const home = "/Home";
  static const onboarding = "/OnBoarding";
  static const login = "/Login";
  static const signup = "/SignUp";
  static const forgotPassword = '/ForgotPassword';
  static const completeprofile = '/CompleteProfile';
}
