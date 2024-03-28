import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/intro_page_1_controller.dart';

class IntroPage1View extends GetView<IntroPage1Controller> {
  const IntroPage1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntroPage1View1'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan,
        child: Text("Intro1"),
      )
    );
  }
}
