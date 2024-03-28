import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_page_3_controller.dart';

class IntroPage3View extends GetView<IntroPage3Controller> {
  const IntroPage3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntroPage3View'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        child: Text("Intro3"),

      )
    );
  }
}
