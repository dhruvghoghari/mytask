import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_page_2_controller.dart';

class IntroPage2View extends GetView<IntroPage2Controller> {
  const IntroPage2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntroPage2View'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.pink,
        child: Text("Intro2"),

      )
    );
  }
}
