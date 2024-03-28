import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mytask/app/modules/home/views/home_view.dart';
import 'package:mytask/app/modules/introscreen/intro_page_1/views/intro_page_1_view.dart';
import 'package:mytask/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../introscreen/intro_page_2/views/intro_page_2_view.dart';
import '../../introscreen/intro_page_3/views/intro_page_3_view.dart';

class OnboadingView extends StatefulWidget {
  const OnboadingView({Key? key}) : super(key: key);

  @override
  State<OnboadingView> createState() => _OnboadingViewState();
}

class _OnboadingViewState extends State<OnboadingView> {
  bool onLastPage = false;
PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage =(index == 2);
              });
            },
            children: [
              Container(
                color: Colors.cyan,
                child: Text("Intro1"),
              ),
              Container(
                color: Colors.pink,
                child: Text("Intro2"),

              ),
              Container(
                color: Colors.grey,
                child: Text("Intro3"),

              ),
             // IntroPage1View(),
             //  IntroPage2View(),
             //  IntroPage3View(),
            ],
          ),
          Container(
            alignment: Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               GestureDetector(
                 onTap: () async{
                   _controller.jumpToPage(2);
                   SharedPreferences prefs = await SharedPreferences.getInstance();
                   prefs.setBool("isFirst", true);
                   Get.offAllNamed(Routes.HOME);
                 },child: Text("Skip"),
               ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                onLastPage ?
                GestureDetector(
                  onTap: () async{

                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setBool("isFirst", true);
                   Get.offAllNamed(Routes.HOME);
                  },child: Text("Done"),
                ):
                GestureDetector(
                  onTap: (){
                    _controller.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeIn
                    );
                  },child: Text("Next"),
                )

              ],
            ),
          )
        ],
      )
    );
  }
}
