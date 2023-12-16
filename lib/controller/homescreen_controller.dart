import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../screen/home.dart';


abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage()
  ];

  List  titlebottomappbar = [
    "home" ,
    "settings" ,
    "profile" ,
    "favorite"
  ] ;

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}