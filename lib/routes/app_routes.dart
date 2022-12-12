import 'package:anton_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:anton_s_application1/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String onboardingScreen = '/onboarding_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    )
  ];
}
