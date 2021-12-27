import 'package:booksapps/pages/home_page.dart';
import 'package:booksapps/pages/sing_ui/sing_into.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  ////////////// متغيرات  ///// ///////
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
            color: Colors.green[100],
            child: ListView(
              children: [
                SizedBox(child: Image.asset("assets/ui_icons/girl_icon.png")),
                const SizedBox(
                  height: 15,
                ),
                buildTextFiled(
                    context: context,
                    controller: emailController,
                    icon: const Icon(Icons.email),
                    textInputType: TextInputType.emailAddress,
                    suffix: const Icon(Icons.person),
                    text: "أدخل البريد الإلكتروني"),
                const SizedBox(
                  height: 10,
                ),
                buildTextFiled(
                    context: context,
                    controller: passController,
                    icon: const Icon(Icons.vpn_key),
                    textInputType: TextInputType.visiblePassword,
                    suffix: Icon(Icons.visibility),
                    text: 'أدخل كلمة المرور....'),
                SingInto.buildButtonSinginto(context, HomePage(),
                    buttSize: 60,
                    color: Colors.green[900],
                    text: 'تسجيل الدخول'),
              ],
            )),
      ),
    );
  }

  Padding buildTextFiled({
    required BuildContext context,
    required Icon icon,
    required TextEditingController controller,
    required TextInputType textInputType,
    required Widget suffix,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          focusColor: Colors.green[800],
          hoverColor: Colors.green[800],
          fillColor: Colors.green[800],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: icon,
          suffix: suffix,
        ),
      ),
    );
  }
}
