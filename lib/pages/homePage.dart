import 'package:flutter/material.dart';
import 'package:school/views/homePageView.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return homePageView();
  }
}
