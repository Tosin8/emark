// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../models/product.dart';
// import 'body.dart';

// class DetailsScreen extends StatelessWidget {
//   static String routeName = '/details';
//   const DetailsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final Object? arguments = ModalRoute.of(context)!.settings.arguments;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xfff5f6f9),
//           leading: const AppBarIconBtn(),
//           actions: [
//             Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: Row(
//                   children: [
//                     const Text(
//                       '4.5',
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                     const SizedBox(width: 5),
//                     SvgPicture.asset('assets/icons/star_icon.svg')
//                   ],
//                 ))
//           ],
//         ),
//         body: DetailScreenBody(product: ,),
//       ),
//     );
//   }
// }

// class AppBarIconBtn extends StatelessWidget {
//   const AppBarIconBtn({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20),
//       child: SizedBox(
//           height: 40,
//           width: 40,
//           child: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: const Icon(Icons.arrow_back_ios),
//           )),
//     );
//   }
// }

// // the need to pass the product to the details screen, and to name the roue to create an arguments class.

// class ProductDetailsArguments {
//   final Product product;
//   ProductDetailsArguments({required this.product});
// }
