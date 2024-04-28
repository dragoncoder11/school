import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school/style/textStyle.dart';

import '../models/product_model.dart';
import 'custoom_counter_circle_avatar.dart';

class AddToCartItem extends StatefulWidget {
   AddToCartItem({
    super.key,
    required this.productModel, required this.onChanged,
  });

  final ProductModel productModel;
  final Function onChanged;

  @override
  State<AddToCartItem> createState() => _AddToCartItemState();
}

class _AddToCartItemState extends State<AddToCartItem> {
 void _decreaseCount() {
    setState(() {
      if (widget.productModel.count > 1) {
        widget.productModel.count--;
      }
      widget.onChanged();
    });
  }

  void _increaseCount() {
    setState(() {
      widget.productModel.count++;
      widget.onChanged();
    });
  }
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.productModel.image,
                    width: 60,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.productModel.name,
                        style: Styles.style22
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${widget.productModel.price*widget.productModel.count} EGP",
                        style: Styles.style22
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                       Row(
                        children: [
                          CustomCounterCircleAvatar(
                            onPressed: _decreaseCount,
                            icon: Icons.remove,
                          ),
                         const SizedBox(
                            width: 15,
                          ),
                          Text(
                            '${widget.productModel.count}',
                          ),
                         const SizedBox(
                            width: 15,
                          ),
                          CustomCounterCircleAvatar(
                          onPressed: _increaseCount,
                            icon: Icons.add,
                          ),
                        ],
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
