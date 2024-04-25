import 'package:flutter/material.dart';
import 'package:school/widgets/spaces.dart';
import 'package:school/style/textStyle.dart';

class studentCard extends StatelessWidget {
  const studentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF6F35A5),
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 160,
                height: 170,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/photo_2024-03-28_20-21-23.jpg'),
                  ),
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "id : ",
                      style: Styles.style25white,
                    ),
                    Text(
                      "15248",
                      style: Styles.style25white,
                    ),
                  ],
                ),
                smallVirticalSpace(),
                Text(
                  "hamed hossam elmarasy ",
                  maxLines: 2,
                  style: Styles.style25white,
                ),
                smallVirticalSpace(),
                Row(
                  children: [
                    Text(
                      "BALANCE :  ",
                      style: Styles.style25white,
                    ),
                    Text(
                      "1275.50",
                      style: Styles.style25white,
                    ),
                    Text(
                      "  EGP",
                      style: Styles.style25white,
                    ),
                  ],
                ),
                smallVirticalSpace(),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "LIMIT : ",
                          style: Styles.style25white,
                        ),
                        Text(
                          "1275.50",
                          style: Styles.style25white,
                        ),
                        Text(
                          "  EGP",
                          style: Styles.style25white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(50),
            //           color: const Color.fromARGB(255, 199, 196, 196)),
            //       child: const Padding(
            //         padding: EdgeInsets.all(5.0),
            //         child: Icon(
            //           Icons.close,
            //           size: 25,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 130,
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
