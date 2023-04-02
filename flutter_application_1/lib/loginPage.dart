// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//   List<String> _images = [
//     'https://picsum.photos/id/1/200/300',
//     'https://picsum.photos/id/2/200/300',
//     'https://picsum.photos/id/3/200/300',
//     'https://picsum.photos/id/4/200/300',
//     'https://picsum.photos/id/5/200/300',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           CarouselSlider(
//             items: _images.map((imageUrl) {
//               return Container(
//                 margin: EdgeInsets.all(5),
//                 child: Image.network(imageUrl),
//               );
//             }).toList(),
//             options: CarouselOptions(
//               height: 200,
//               initialPage: 0,
//               enlargeCenterPage: true,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: _images.map((imageUrl) {
//               int index = _images.indexOf(imageUrl);
//               return Container(
//                 width: 8,
//                 height: 8,
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentIndex == index
//                       ? Colors.blueAccent
//                       : Colors.grey,
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }