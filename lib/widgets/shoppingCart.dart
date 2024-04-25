import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubit/add_product_cubit.dart';
import 'package:school/style/textStyle.dart';
import 'package:school/views/homePageView.dart';

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
          BlocBuilder<AddProductCubit, AddProductState>(
            builder: (context, state) {
              return SizedBox(
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
                          return Container(child: Column(children: [
                            Image.network(cubit.products[index].image,height: 100,width: 100,),
                            Text(cubit.products[index].name),
                          ],),);
                        }),
              );
            },
          ),
        ],
      ),
    );
  }
}
