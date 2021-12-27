
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// class ShopBooks extends StatelessWidget {
//   const ShopBooks({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }








  // Widget buildGridViewItem(int item, double imageSize) {
  //   return Expanded(
  //     flex: 10,
  //     child: GridView.builder(
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: item, mainAxisSpacing: 8, crossAxisSpacing: 8),
  //       itemBuilder: (context, item) => InkWell(
  //         onTap: () {
  //           Navigator.of(context).push(MaterialPageRoute(
  //               builder: (context) => PDFViwe(),
  //               settings: RouteSettings(arguments: item)));
  //         },
  //         child: buildCardItemPDF(
  //             image: ListMyBook.myImgae[item],
  //             text: ListMyBook.nameBook[item],
  //             imageSize: imageSize),
  //       ),
  //       itemCount: ListMyBook.myImgae.length,
  //     ),
  //   );
  // }













//   Widget bildCarouselSlider() {
//     return CarouselSlider.builder(
//         itemBuilder: (context, index, item) => Image.asset(
//               images[index],
//               width: MediaQuery.of(context).size.width,
//               fit: BoxFit.fill,
//             ),
//         itemCount: images.length,
//         options: CarouselOptions(
//           aspectRatio: 16 / 11,
//           viewportFraction: 1,
//           autoPlay: true,
//           autoPlayInterval: const Duration(seconds: 5),
//           autoPlayAnimationDuration: const Duration(seconds: 2),
//           autoPlayCurve: Curves.fastOutSlowIn,
//           enlargeCenterPage: true,
//         ));
//   }

//   Widget buildContainerShadowCeelk(
//       {required BuildContext context,
//       required String text,
//       required onTap,
//       required color}) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         height: MediaQuery.of(context).size.width / 3,
//         width: MediaQuery.of(context).size.width / 2.5,
//         child: Text(
//           text,
//           style: const TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               shadows: [Shadow(color: Colors.black, blurRadius: 20)]),
//         ),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             color: color,
//             boxShadow: const [
//               BoxShadow(color: Colors.black, blurRadius: 20, spreadRadius: 5)
//             ],
//             borderRadius: BorderRadius.circular(20)),
//       ),
//     );
//   }
// }