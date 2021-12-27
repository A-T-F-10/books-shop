

// class MyWidgets {
//   static InputDecoration buildInputDecoration(
//       {required BuildContext context, required Icon icon}) {
//     return InputDecoration(
//       focusColor: Theme.of(context).colorScheme.secondary,
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       prefixIcon: icon,
//     );
//   }
// }




















// Widget buildGridViewItem(int item, double imageSize) {
//     return Expanded(
//       flex: 10,
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: item, mainAxisSpacing: 8, crossAxisSpacing: 8),
//         itemBuilder: (context, item) => InkWell(
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => PDFViwe(),
//                 settings: RouteSettings(arguments: item)));
//           },
//           child: buildCardItemPDF(
//               image: ListMyBook.myImgae[item],
//               text: ListMyBook.nameBook[item],
//               imageSize: imageSize),
//         ),
//         itemCount: ListMyBook.myImgae.length,
//       ),
//     );
//   }




  // class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   final theme = Provider.of<ThemeChanger>(context);
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       theme: theme.getTheme(),
  //       home: AnimatedSplashScreen(
  //         nextScreen: Directionality(
  //           child: User(),
  //           textDirection: TextDirection.rtl,
  //         ),
  //         backgroundColor: Colors.black26,
  //         animationDuration: Duration(milliseconds: 3500),
  //         splashTransition: SplashTransition.fadeTransition,
  //         duration: 700,
  //         splashIconSize: 500,
  //         splash: Image.asset(
  //           'Image/body.png',
  //           fit: BoxFit.cover,
  //         ),
  //       ));
//   }
// }











//  Widget myBodyApp() {
//     return SafeArea(
//       child: NestedScrollView(
//         floatHeaderSlivers: true,
//         headerSliverBuilder: (context, value) => [
//           SliverAppBar(
//             title: const Text("  مكتبة الشموع العلم"),
//             actions: [
//               PopupMenuButton(
//                 elevation: 10,
//                 itemBuilder: (context) => [
//                   const PopupMenuItem(
//                     child: Text("الكل "),
//                   ),
//                   const PopupMenuItem(
//                     child: Text("الآدب"),
//                   ),
//                   const PopupMenuItem(
//                     child: Text(" الثقافة"),
//                   ),
//                   const PopupMenuItem(
//                     child: Text("علوم انسانية "),
//                   ),
//                   const PopupMenuItem(
//                     child: Text("كتب اطفال"),
//                   ),
//                 ],
//                 icon: const Icon(Icons.library_books_outlined),
//               ),
//             ],
//             centerTitle: true,
//           ),
//         ],
//         body: LayoutBuilder(builder: (context, constraints) {
//           if (constraints.maxWidth < 710 && constraints.maxWidth > 300) {
//             return buildLayoutSize(2, 130);
//           } else if (constraints.maxWidth > 699) {
//             return buildLayoutSize(3, 200);
//           } else {
//             return buildLayoutSize(1, 200);
//           }
//         }),
//       ),
//     );
//   }