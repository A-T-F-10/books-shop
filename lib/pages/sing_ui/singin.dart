import 'package:booksapps/pages/sing_ui/sing_into.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  ////////////// متغيرات  ///// ///////
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
            color: Colors.green[100],
            child: ListView(
              children: [
                SizedBox(
                    child: Image.asset("assets/ui_icons/Learning-bro.png")),
                const SizedBox(
                  height: 13,
                ),
                buildTextFiled(
                    context: context,
                    controller: userController,
                    icon: const Icon(Icons.person),
                    textInputType: TextInputType.emailAddress,
                    suffix: const Icon(Icons.add_link),
                    text: "أدخل اسم المستخدم "),
                const SizedBox(
                  height: 10,
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
                SingInto.buildButtonSinginto(context, const SingIn(),
                    buttSize: 60,
                    color: Colors.green[900],
                    text: ' إنشاء حساب جديد'),
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
