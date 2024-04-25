
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class AddToCartItem extends StatelessWidget {
  const AddToCartItem({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Column(children: [
      Image.network(productModel.image,height: 100,width: 100,fit: BoxFit.fill,),
      Text(productModel.name),
    ],),);
  }
}