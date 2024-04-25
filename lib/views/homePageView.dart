import 'package:flutter/material.dart';
import 'package:school/models/categoryModels.dart';
import 'package:school/models/product_model.dart';
import 'package:school/pages/buyingDetailsPage.dart';
import 'package:school/style/textStyle.dart';
import 'package:school/widgets/categoryCard.dart';
import 'package:school/widgets/product_card.dart';
import 'package:school/widgets/spaces.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

//List<Widget> purchases = [];

class homePageView extends StatefulWidget {
  homePageView({
    super.key,
  });

  @override
  State<homePageView> createState() => _homePageViewState();
}

class _homePageViewState extends State<homePageView> {
  List<ProductModel> products = [
    ProductModel(image: 'assets/orangeJuice.jpg', name: 'orange juice', price: 24),
    ProductModel(image: 'assets/health.jpg', name: 'health', price: 22),
        ProductModel(image: 'assets/s1.jpg', name: 'hhjfh', price: 20),
    ProductModel(image: 'assets/s2.jpg', name: 'kofta', price: 10),
    ProductModel(image: 'assets/sports.jpg', name: 'sports', price: 7),

  ];
  int currentIndex = 0;
  List<categoryModel> categories = [
    categoryModel(
      icon: "assets/icons/expand_786461.png",
      name: "all",
    ),
    categoryModel(
      icon: "assets/icons/sandwich_4202101.png",
      name: "sandwiches",
    ),
    categoryModel(
      icon: "assets/icons/fruit-juice_2114721.png",
      name: "fresh juice",
    ),
    categoryModel(
      icon: "assets/icons/fruits_3731055.png",
      name: "fruits",
    ),
    categoryModel(
      icon: "assets/icons/apple-pie_11177382.png",
      name: "pies",
    ),
    categoryModel(
      icon: 'assets/icons/cookies_7311446.png',
      name: "biscuts",
    ),
    categoryModel(
      icon: "assets/icons/cupcake_9391812.png",
      name: "cake",
    ),
    categoryModel(
      icon: 'assets/icons/Iconarchive-Fat-Sugar-Food-Pizza.512.png',
      name: "pizza",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const buyingDetailsPage(),
        Expanded(
          child: Column(children: [
            const bigvirticalSpace(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return (currentIndex == index)
                        ? categoryCard(
                            onPress: () {
                              currentIndex = index;
                            },
                            category: categories[index],
                            coolor: const Color(0xFF6F35A5),
                          )
                        : categoryCard(
                            onPress: () {
                              currentIndex = index;
                              setState(() {});
                            },
                            category: categories[index],
                            coolor: const Color.fromARGB(255, 188, 187, 187),
                          );
                  }),
            ),
            Expanded(
                child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 15,
                crossAxisSpacing: 5,
                childAspectRatio: .65,
              ),
              itemBuilder: (context, index) {
               /*  for (var product in products) {
                  return products[index];
                } */
                return ProductCard(productModel: products[index]);
                // return Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: const Color.fromARGB(255, 189, 187, 190),
                //         borderRadius: BorderRadiusDirectional.circular(40)),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Image.asset(
                //             "assets/juiceProduct.png",
                //             width: 100,
                //             height: 100,
                //           ),
                //         ),
                //         const Text(
                //           "orange juice",
                //           style: Styles.style24,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           children: [
                //             const Padding(
                //               padding: EdgeInsets.all(8.0),
                //               child: Row(
                //                 children: [
                //                   Text(
                //                     "24",
                //                     style: Styles.style24,
                //                   ),
                //                   Text(" EGP", style: Styles.style24),
                //                 ],
                //               ),
                //             ),
                //             IconButton(
                //               highlightColor: Colors.amber,
                //               style: const ButtonStyle(
                //                   backgroundColor: MaterialStatePropertyAll(
                //                       Color.fromARGB(255, 117, 112, 210))),
                //               onPressed: () {},
                //               icon: const Icon(
                //                 size: 25,
                //                 Icons.add,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // );
              },
            ))
          ]),
        )
      ],
    );
  }
}
