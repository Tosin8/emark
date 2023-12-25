import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/product.dart';

class IconBtwCounter extends StatelessWidget {
  const IconBtwCounter({
    super.key,
    required this.svgSrc,
    required this.numOfItems,
    required this.press,
  });

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xff979797).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgSrc),
        ),
        if (numOfItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '$numOfItems',
                  style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}

class searchField extends StatelessWidget {
  const searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          onChanged: (value) {
            // search value.
          },
          decoration:  InputDecoration(
            filled: true, 
            fillColor: const Color(0xff979797).withOpacity(0.1),
            enabledBorder: searchOutlineInputBorder, 
            focusedBorder: searchOutlineInputBorder, 
            hintText: 'Search Products',
            prefixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          )),
    );
  }
}

const searchOutlineInputBorder = OutlineInputBorder (borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide.none, 
);

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height:180,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/banner.png'), 
              fit: BoxFit.cover
          ),
          //color: const Color(0xff4a3298),
          borderRadius: BorderRadius.circular(20),
          
        ),
        // child: const Text.rich(TextSpan(
        //     text: 'A Summer Surprise\n',
        //     style: TextStyle(color: Colors.white),
        //     children: [
        //       TextSpan(
        //           text: 'CashBack 20%',
        //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        //     ])
        //     )
        );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff979797).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const searchField(),
          ),
          IconBtwCounter(
            svgSrc: 'assets/icons/cart_icon.svg',
            numOfItems: 1,
            press: () {},
          ),
          IconBtwCounter(
            svgSrc: 'assets/icons/bell.svg',
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/flash_icon.svg', 'text': 'Flash Deal'},
      {'icon': 'assets/icons/bill_icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icons/game_icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/gift_icon.svg', 'text': 'Dolly Gift'},
      {'icon': 'assets/icons/discover.svg', 'text': 'Flash Deal'},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]['icon'],
                  text: categories[index]['text'],
                  press: () {}))
        ],
      ),
    );

    //CategoryCard(categories: categories);
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  //final List<Map<String, dynamic>> categories;

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: 50,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xffffecdf),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(icon),
                  //(categories[0]['icon']),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                text,
                // categories[0]['text'],
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(onTap: press, child: const Text('See More')),
        ],
      ),
    );
  }
}

class SpeicialOffers extends StatelessWidget {
  const SpeicialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                  image: 'assets/images/products/image_banner_2.png',
                  category: 'Smartphones',
                  numOfBrands: 18,
                  press: () {}),
              SpecialOfferCard(
                  image: 'assets/images/products/image_banner_3.png',
                  category: 'Fashion',
                  numOfBrands: 24,
                  press: () {}),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
          width: 242,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                  Image.asset(image, 
                    fit: BoxFit.contain), 
              Container(
                height: 150, 
                width: 242,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xff343434).withOpacity(0.4),
                      const Color(0xff343434).withOpacity(0.15),
                    ])),
                   ),
            
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: '$category\n',
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(text: '$numOfBrands Brands'),
                      ]),
                ),
              ),
            ]),
          )));
    
  }
}

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     super.key,
//     this.width = 140,
//     this.aspectRetion = 1.02,
//     required this.product,
//     required this.press,
//   });

//   final double width, aspectRetion;
//   final Product product;
//   final GestureTapCallback press;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20),
//       child: GestureDetector(
//         onTap: press,
//         child: SizedBox(
//           width: width,
//           child: Column(
//             children: [
//               AspectRatio(
//                 aspectRatio: aspectRetion,
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: kSecondaryColor.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Image.asset(product.images[0]),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 product.title,
//                 style: const TextStyle(color: Colors.black),
//                 maxLines: 2,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '\$${product.price}',
//                     style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: kPrimaryColor),
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     borderRadius: BorderRadius.circular(30),
//                     child: Container(
//                       padding: const EdgeInsets.all(6),
//                       width: 28,
//                       height: 28,
//                       decoration: BoxDecoration(
//                           color: product.isFavorite
//                               ? kPrimaryColor.withOpacity(0.5)
//                               : kSecondaryColor.withOpacity(0.51),
//                           shape: BoxShape.circle),
//                       child: SvgPicture.asset(
//                         'assets/icons/heart_Icon_2.svg',
//                         color: product.isFavorite
//                             ? const Color(0xffff4848)
//                             : const Color(0xffd8dee4),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PopularProduct extends StatelessWidget {
//   const PopularProduct({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(text: 'Popular Product', press: () {}),
//         const SizedBox(height: 20),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               ...List.generate(demoProducts.length, (index) {
//                 if (demoProducts[index].isPopular) {
//                   return ProductCard(
//                     product: demoProducts[index],
//                     press: () => Navigator.pushNamed(
//                         context, DetailsScreen.routeName,
//                         arguments: ProductDetailsArguments(
//                             product: demoProducts[index])),
//                   );
//                 }
//                 return SizedBox.shrink();
//               }),
//               const SizedBox(width: 20),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
