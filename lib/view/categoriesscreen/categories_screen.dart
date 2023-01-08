import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/categoriesscreen/widgets/widgetcategories2.dart';
import 'package:flutter/material.dart';

class ScreenCategories extends StatefulWidget {
  const ScreenCategories({super.key});

  @override
  State<ScreenCategories> createState() => _ScreenCategoriesState();
}

class _ScreenCategoriesState extends State<ScreenCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: const Text(
                'Categories',
                style: TextStyle(
                    fontFamily: 'RobotoSlab', fontSize: 20, color: red1),
              ),
            ),
            WidgetCategories2(),
          ]),
        ),
      ),
    );
  }
}
