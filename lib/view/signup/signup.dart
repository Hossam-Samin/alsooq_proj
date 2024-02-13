import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constans/app_assets_images/app_assets_images.dart';
import '../../widgets/custom_textField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 360),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.sort_rounded, size: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 320),
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20, right: 300),
              child: Text(
                "Full Name",
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
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  hintText: "Type name",
                  onChange: (value) {},
                )),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20, right: 260),
              child: Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            Row(children: [
              Expanded(
                flex: 12,
                child: InkWell(
                    child: CountryCodePicker(
                  initialSelection: "Eg",
                  favorite: const ['+20', 'Eg'],
                  alignLeft: true,
                  flagDecoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  dialogBackgroundColor: Colors.white,
                  dialogTextStyle: const TextStyle(
                      fontFamily: "JF-Flat",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Expanded(
                flex: 30,
                child: Card(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    color: Colors.grey.withOpacity(.2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CustomTextField(
                      hintText: "Type Phone Number",
                      onChange: (value) {},
                    )),
              ),
            ]),
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
              padding: EdgeInsets.only(top: 40, left: 20, right: 310),
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
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: RichText(
                  text: const TextSpan(
                    text: 'By creating an account, you agree to our ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'User Agreement',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                      TextSpan(text: ' and acknowldge reading our'),
                      TextSpan(
                          text: ' User privcey notes.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  ),
                )),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {},
              color: Colors.red.withOpacity(.9),
              padding: const EdgeInsets.only(
                  top: 14, bottom: 14, left: 50, right: 50),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do you hava an account ? ",
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
                      "Login",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "OR Login With",
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
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
