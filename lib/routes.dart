

import 'package:ecommercecourse1/screen/home_screen.dart';
import 'package:ecommercecourse1/screen/on_boarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/routes.dart';
import 'core/middleware/my_middleware.dart';

List<GetPage<dynamic>>? routes = [

  // GetPage(name: "/", page: () => const ReportView()),

  GetPage(name: "/", page: () => const OnBoarding()),
// middlewares: [
//     MyMiddleWare()]),


  //Auth
  //Home
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),






];
