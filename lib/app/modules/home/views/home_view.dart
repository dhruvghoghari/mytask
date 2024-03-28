import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mytask/app/modules/home/controllers/home_controller.dart';
import 'package:mytask/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeCon = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeCon.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOmeVIew"),),
      body: Column(
        children: [
          Image.network(homeCon.photo.value),
          Text(homeCon.name.value),
          ElevatedButton(onPressed: () async{

            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.clear();

            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.signOut();

           Get.offAllNamed(Routes.LOGIN);
          }, child: Text("Logout"))
        ],

      ),
    );
  }
}
