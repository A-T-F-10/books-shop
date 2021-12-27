import 'package:booksapps/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddShopping extends StatefulWidget {
  const AddShopping({Key? key}) : super(key: key);

  @override
  _AddShoppingState createState() => _AddShoppingState();
}

class _AddShoppingState extends State<AddShopping> {
  final TextStyle _textStyle =
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ProviderTheme>(context).backgraond,
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
                "${Provider.of<ProviderTheme>(context, listen: false).image}"),
            height: 400,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${Provider.of<ProviderTheme>(context).text}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.payment),
                  label: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 17),
                      child: Text(
                        'شراء',
                        style: _textStyle,
                      ))),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                  ),
                  icon: const Icon(Icons.read_more),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 17),
                    child: Text(
                      'اقراء ',
                      style: _textStyle,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
