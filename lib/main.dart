import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubit/add_product_cubit.dart';
import 'package:school/cubit/cubit/categories_cubit.dart';
import 'package:school/pages/homePage.dart';
import 'package:school/repos/home_repo_impl.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});
HomeRepoImplement homeRepoImplement =HomeRepoImplement();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddProductCubit>(
          create: (context) => AddProductCubit(widget.homeRepoImplement),
        ),
        BlocProvider<CategoriesCubit>(
          create: (context) => CategoriesCubit(widget.homeRepoImplement)..fetchCategories(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: homePage(),
        ),
      ),
    );
  }
}
