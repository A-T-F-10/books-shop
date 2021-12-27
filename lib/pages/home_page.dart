import 'package:booksapps/pages/books_cher/list_image.dart';
import 'package:booksapps/pages/books_cher/shop_book_list.dart';
import 'package:booksapps/provider/theme_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> itemList = ['', ''];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: bubuildDrawersild(context),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShopBook()));
          },
          child: const Icon(Icons.bookmark_add_rounded),
        ),
        backgroundColor: Provider.of<ProviderTheme>(context).backgraond,
        appBar: AppBar(
          title: const Text("مكتبتك"),
          centerTitle: true,
        ),
        body: itemList.isEmpty
            ? const Center(
                child: Text(
                  "أضاف كتاب ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            : LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth < 710 && constraints.maxWidth > 300) {
                  return buildGridViewItem(2, 120);
                } else if (constraints.maxWidth > 699) {
                  return buildGridViewItem(3, 200);
                } else {
                  return buildGridViewItem(1, 200);
                }
              }),
      ),
    );
  }

  Widget bubuildDrawersild(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(),
              accountName: const Text(""),
              accountEmail: const Text(
                "",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  child: Icon(Icons.person_add),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Divider(),
                ListTile(
                  leading: Provider.of<ProviderTheme>(context).value
                      ? const Icon(Icons.light_mode)
                      : const Icon(Icons.dark_mode),
                  title: const Text(" وضع النظام"),
                  trailing: Switch(
                      value: Provider.of<ProviderTheme>(context).value,
                      onChanged: (val) {
                        context.read<ProviderTheme>().changeTheme();
                      }),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text("لغة"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    showDialog(
                        builder: (context) {
                          return AlertDialog(
                            actionsAlignment: MainAxisAlignment.spaceAround,
                            title: const Text(
                              "اللغة ",
                              textAlign: TextAlign.center,
                            ),
                            content: const Text(
                              "اختار اللغة الآتية",
                              textAlign: TextAlign.center,
                            ),
                            elevation: 20,
                            actionsOverflowDirection: VerticalDirection.up,
                            actions: [
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.language),
                                label: const Text("Englsh "),
                              ),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.language),
                                label: const Text(" العربية"),
                              ),
                            ],
                          );
                        },
                        useRootNavigator: false,
                        context: context);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("الإعدادات"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () {},
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.archive_outlined),
                  title: Text("حول "),
                  trailing: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text("خروج"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            content: Text("هل انت متأكد من الخروج"),
                            title: Text("خروج من التطبيق"),
                            insetAnimationDuration: Duration(seconds: 1),
                            insetAnimationCurve: Curves.easeOutCubic,
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(" لا")),
                              ElevatedButton(
                                  onPressed: () {
                                    SystemNavigator.pop();
                                  },
                                  child: Text("نعم ")),
                            ],
                          );
                        });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildGridViewItem(int item, double imageSize) {
    return InkWell(
      onTap: () {},
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: item, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, item) => InkWell(
          onTap: () {},
          child: buildCardItemPDF(
              image: ListImage.images[item],
              text: ListImage.nameBook[item],
              imageSize: imageSize),
        ),
        itemCount: 6,
      ),
    );
  }

  Widget buildCardItemPDF(
      {required String image,
      required String text,
      required double imageSize}) {
    return Card(
      elevation: 25,
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(
              image,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
