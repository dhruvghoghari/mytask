import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: ElevatedButton(onPressed: () async{

        final GoogleSignIn googleSignIn = GoogleSignIn();
        final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
        if (googleSignInAccount != null) {
          final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
          final AuthCredential authCredential = GoogleAuthProvider.credential(
              idToken: googleSignInAuthentication.idToken,
              accessToken: googleSignInAuthentication.accessToken);

          UserCredential result = await auth.signInWithCredential(authCredential);
          User user = result.user!;

          var name = user.displayName.toString();
          var email = user.email.toString();
          var photo = user.photoURL.toString();
          var googleId = user.uid.toString();

          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("name", name);
          prefs.setBool("isLogin", true);
         // prefs.setString("isLogin", "yes");
          prefs.setString("email", email);
          prefs.setString("photo", photo);
          prefs.setString("googleId", googleId);

          Get.offAllNamed(Routes.HOME);
        }
      },child: Text("Google"),)
    );
  }
}
