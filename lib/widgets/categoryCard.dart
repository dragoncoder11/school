import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school/models/product_model.dart';
import 'package:school/style/textStyle.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
    required this.category,
    required this.coolor,
    required this.onPress,
  });
  final VoidCallback onPress;
  final Color coolor;
  final HomeModel category;
  @override
  Widget build(BuildContext context) {
    print('category name:${category.name}');
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: coolor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text(
                  category.name!,
                  style: Styles.style25white,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
