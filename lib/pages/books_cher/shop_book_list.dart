import 'package:booksapps/pages/books_cher/add_shopping.dart';
import 'package:booksapps/pages/books_cher/list_image.dart';
import 'package:booksapps/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class ShopBook extends StatefulWidget {
  const ShopBook({Key? key}) : super(key: key);

  @override
  _ShopBookState createState() => _ShopBookState();
}

class _ShopBookState extends State<ShopBook> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Provider.of<ProviderTheme>(context).backgraond,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'متجر الكتب ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: ListImage.images.length,
            itemBuilder: (contxt, item) {
              return InkWell(
                onTap: () {
                  setState(() {
                    Provider.of<ProviderTheme>(context, listen: false).image =
                        ListImage.images[item];
                    Provider.of<ProviderTheme>(context, listen: false).text =
                        ListImage.nameBook[item];
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddShopping()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            ListImage.images[item],
                            width: 120,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          width: 140,
                          child: Text(
                            ListImage.nameBook[item],
                            // maxLines: 30,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("${20.9}ريال"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
