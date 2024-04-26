import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubit/add_product_cubit.dart';
import 'package:school/style/textStyle.dart';

import 'add_to_cart_item.dart';

class shoppingCart extends StatefulWidget {
  const shoppingCart({
    super.key,
  });

  @override
  State<shoppingCart> createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AddProductCubit>(context);
    double calculateTotalPrice() {
      double totalPrice = 0.0;
      for (var product in cubit.products) {
        totalPrice += product.price;
      }
      return totalPrice;
    }

    return BlocBuilder<AddProductCubit, AddProductState>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.sizeOf(context).height / 2,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
            color: Color(0xFFF1E6FF),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.shopping_cart,
                              size: 40,
                            ),
                          ),
                          Text(
                            "Cart",
                            style: Styles.style24,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 3,
                        child: cubit.products.isEmpty
                            ? const Center(
                                child: Text(
                                  "There is No purchases !",
                                  style: Styles.style25,
                                ),
                              )
                            : ListView.builder(
                                itemCount: // (cubit.products.isEmpty) ? 1 : purchases.length,
                                    cubit.products.length,
                                itemBuilder: (context, index) {
                                  /* for (var x in purchases) {
                                              return purchases[index];
                                            } */
                                  return AddToCartItem(
                                      productModel: cubit.products[index]);
                                }),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'total : ${calculateTotalPrice().toString()}:00 EGP',
                      style: Styles.style24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 230,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'cash',
                                style: Styles.style22,
                              ),
                            ),
                          ),
                          Container(
                            width: 230,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 126, 154, 203),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'wallet',
                                style: Styles.style22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),fixedSize: MaterialStatePropertyAll(Size(180, 50))),
                  child: const Text(
                    'Button',
                    style: Styles.style22,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
