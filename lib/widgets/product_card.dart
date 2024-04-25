import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubit/add_product_cubit.dart';
import 'package:school/models/product_model.dart';

import '../style/textStyle.dart';
import '../views/homePageView.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.productModel});
final ProductModel productModel;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 189, 187, 190),
            borderRadius: BorderRadiusDirectional.circular(40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                widget.productModel.image,
                width: 100,
                height: 100,
              ),
            ),
             Text(
              widget.productModel.name,
              style: Styles.style24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "${widget.productModel.price} EGP",
                        style: Styles.style24,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  highlightColor: Colors.amber,
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 117, 112, 210))),
                  onPressed: () {
             /*        purchases.add(Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                height: 60,
                               productModel.image,
                              ),
                               Text(
                                productModel.name,
                                style: Styles.style24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )); */
                    setState(() {
                      
                    });
                    BlocProvider.of<AddProductCubit>(context).addOrRemoveProduct(productModel: widget.productModel);
                  },
                  icon:  Icon(
                    size: 25,
                  BlocProvider.of<AddProductCubit>(context).products.contains(widget.productModel) ?Icons.check: Icons.add,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}