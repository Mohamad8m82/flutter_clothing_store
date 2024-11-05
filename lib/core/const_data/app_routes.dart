import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/auth/sign_in/screen/sign_in_screen.dart';
import '../../view/auth/sign_up/screen/signup.dart';
import '../../view/favorite/screen/favorite_screen.dart';
import '../../view/home/screen/home_screen.dart';
import '../../view/my_cart/screen/my_cart_screen.dart';
import '../../view/notification/screen/notification_screen.dart';
import '../../view/profile/screen/profile_screen.dart';
import '../../view/search/screen/search_screen.dart';
import '../../view/side_menu/screen/side_menu_screen.dart';
import '../../view/welcome_pages/pageview_builder/welcome_page.dart';
class Routes {
  static const String details = '/details';
  static const String homepage = '/homepage';
  static const String favorite = '/favorite';
  static const String mycart = '/mycart';
  static const String sidemenu = '/sidemenu';
  static const String profile = '/profile';
  static const String signup = '/signup';
  static const String signin = '/signin';
  static const String Page_view = '/Page_view';
  static const String notification = '/notification';
  static const String search = '/search';

  static final List<GetPage> pages = [


    GetPage(
        name: '/homepage',
        page: () => const HomeScreen(),
        transition: Transition.rightToLeftWithFade),GetPage(
        name: '/search',
        page: () => const SearchScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: '/favorite',
        page: () => const FavoritePage(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: '/mycart',
        page: () => const My_cart(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: '/sidemenu',
        page: () => const Side_Menu(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: '/signup',
        page: () => const SignupScreen(),
        transition: Transition.fade),
    GetPage(
        name: '/signin',
        page: () => const SignInScreen(),
        transition: Transition.fade),
    GetPage(
        name: '/Page_view',
        page: () =>  WelcomePage(),
        transition: Transition.fade),
    GetPage(
        name: '/notification',
        page: () =>  const NotificationScreen(),
        transition: Transition.rightToLeftWithFade),GetPage(
        name: '/profile',
        page: () =>  const Profile_Screen(),
        transition: Transition.rightToLeftWithFade),

  ];
}
