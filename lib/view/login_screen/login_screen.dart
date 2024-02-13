import 'package:alsooq_proj/constans/app_assets_images/app_assets_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_textField.dart';
import '../drawer/drawer_screen.dart';
import '../signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // final TextEditingController _userEmailController = TextEditingController();
  // final TextEditingController _userPasswordController = TextEditingController();
  // final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  // AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  // String? userEmail, password;
  // bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = ZoomDrawerController();
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _drawerKey,
        drawer: DrawerScreen(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 360),
            child: IconButton(
              onPressed: () {
                if (ZoomDrawer.of(context)!.isOpen()) {
                  zoomDrawerController.toggle;
                  _drawerKey.currentState!.isDrawerOpen;
                  ZoomDrawer.of(context)!.close();
                } else {
                  ZoomDrawer.of(context)!.open();
                }
              },
              icon: const Icon(Icons.sort_rounded, size: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 320),
            child: Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 20, right: 320),
            child: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          Card(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              color: Colors.grey.withOpacity(.2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomTextField(
                prefixIcon: const Icon(Icons.email),
                hintText: "Type email",
                onChange: (value) {},
              )),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 20, right: 300),
            child: Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            color: Colors.grey.withOpacity(.2),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: CustomTextField(
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility_off_rounded),
              hintText: "Type Password",
              onChange: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 250),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Forget Password?",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {},
            color: Colors.red.withOpacity(.9),
            padding:
                const EdgeInsets.only(top: 14, bottom: 14, left: 50, right: 50),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "OR Login With",
              style: TextStyle(fontFamily: "Rubik"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Image.asset(
                    AppAssets.socialFacebook,
                    height: 40,
                  )),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 15),
                child: Image.asset(
                  AppAssets.socialGoogle,
                  height: 40,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t hava an account ? ",
                  style: TextStyle(),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                        (route) => false);
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 615,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80), topRight: Radius.circular(80)),
            ),
            child: Row(children: [
              Expanded(
                child: Column(
                  children: const [
                    SizedBox(height: 40),
                    Icon(Icons.help, size: 30),
                    Text("Need Help")
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    SizedBox(height: 40),
                    Icon(Icons.person, size: 30),
                    Text("Contact as guset")
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
