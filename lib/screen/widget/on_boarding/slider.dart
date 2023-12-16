import 'package:ecommercecourse1/controller/onboarding_controller.dart';
import 'package:ecommercecourse1/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            onBoardingList[i].image!,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 370,),
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Color.fromRGBO(24, 23, 23, 0.32),
                   ),
                   child: Column(
                     children: [
                       Text(
                         onBoardingList[i].title!,
                         style: const TextStyle(
                           fontSize: 24, // Adjust the font size
                           fontWeight: FontWeight.bold, // Adjust the font weight
                           color: Colors.white, // Adjust the text color
                         ),
                         textAlign: TextAlign.center,
                       ),
                       //const SizedBox(height: 10),
                       Text(
                         onBoardingList[i].body!,
                         style: TextStyle(
                           fontSize: 16, // Adjust the font size
                           fontWeight: FontWeight.normal, // Adjust the font weight
                           color: Colors.white, // Adjust the text color
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ],
                   ),

                 )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
