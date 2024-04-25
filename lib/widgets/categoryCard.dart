import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school/models/categoryModels.dart';
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
  final categoryModel category;
  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Image(
                    height: 80,
                    width: 80,
                    image: AssetImage(category.icon),
                  ),
                  Text(
                    category.name,
                    style: Styles.style25white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
