import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school/style/textStyle.dart';

import '../models/product_model.dart';

class AddToCartItem extends StatelessWidget {
  const AddToCartItem({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 126, 154, 203),
              borderRadius: BorderRadiusDirectional.circular(40)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    productModel.image,
                    width: 60,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(width: 20,),
                Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    productModel.name,
                    style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    "${productModel.price} EGP",
                    style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
