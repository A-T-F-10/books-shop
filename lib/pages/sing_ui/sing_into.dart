import 'package:booksapps/pages/sing_ui/singin.dart';
import 'package:booksapps/pages/sing_ui/singup.dart';
import 'package:flutter/material.dart';

class SingInto extends StatelessWidget {
  const SingInto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Container(
              color: Colors.green[100],
              child: ListView(
                children: [
                  boxSize(),
                  buildTextUp(text: "شركة التبيان للتعليم"),
                  SizedBox(child: Image.asset("assets/ui_icons/book_man.png")),
                  boxSize(),
                  buildButtonSinginto(context, const SingUp(),
                      buttSize: 60,
                      color: Colors.green[900],
                      text: 'تسجيل الدخول'),
                  buildButtonSinginto(context, const SingIn(),
                      buttSize: 60,
                      color: Colors.green[500],
                      text: 'إنشاء حساب '),
                ],
              )),
        ),
      ),
    );
  }

//////////////buildTextUp////////////////

  Text buildTextUp({required String text}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.grey[100], fontSize: 40, fontWeight: FontWeight.bold),
    );
  }

//////////////////////buildButtonSinginto////////////////////////////

  static Widget buildButtonSinginto(BuildContext context, calss,
      {required double buttSize, required color, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (conttext) => calss));
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              fixedSize: MaterialStateProperty.all(Size.fromHeight(buttSize)),
              elevation: MaterialStateProperty.all(20),
              backgroundColor: MaterialStateProperty.all(color))),
    );
  }
}

/////////////////////boxSize////////////////
Widget boxSize() {
  return const SizedBox(
    height: 20,
  );
}
