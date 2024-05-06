import 'package:flutter/material.dart';
import 'package:school/cubit/cubit/categories_cubit.dart';
import 'package:school/pages/buyingDetailsPage.dart';
import 'package:school/style/textStyle.dart';
import 'package:school/widgets/categoryCard.dart';
import 'package:school/widgets/product_card.dart';
import 'package:school/widgets/spaces.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homePageView extends StatefulWidget {
 const homePageView({
    super.key,
  });
  @override
  State<homePageView> createState() => _homePageViewState();
}

class _homePageViewState extends State<homePageView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const buyingDetailsPage(),
        Expanded(
          child: Column(children: [
            const bigvirticalSpace(),
            BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state) {
                if (state is FailedToGetCategories) {
                  return Text(state.errMessage);
                }
                if (state is CategoriesLoading) {
                  return CircularProgressIndicator();
                }
                if (state is CategoriesSuccess) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return (currentIndex == index)
                            ? categoryCard(
                                onPress: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                category: state.categories[index],
                                coolor: const Color(0xFF6F35A5),
                              )
                            : categoryCard(
                                onPress: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                category: state.categories[index],
                                coolor:
                                    const Color.fromARGB(255, 188, 187, 187),
                              );
                      },
                    ),
                  );
                }
                return const Text('data');
              },
            ),
            const SizedBox(height: 20,),
            BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state) {
                if (state is CategoriesSuccess) {
                  final category = state.categories[currentIndex];
                  final products = category.products;

                  return Expanded(
                    child:products!.length==0?Center(child:Text('There is no ${category.name}',style: Styles.style24,) ,) :GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 5,
                        childAspectRatio: .65,
                      ),
                      itemBuilder: (context, index) {
                        final product = products![index];
                        return ProductCard(
                          productModel: product,
                        );
                      },
                      itemCount: products!.length,
                    ),
                  );
                }
                if (state is FailedToGetCategories) {
                  return Text(state.errMessage);
                }
                return Expanded(child: const Center(child: CircularProgressIndicator()));
              },
            )
          ]),
        )
      ],
    );
  }
}
