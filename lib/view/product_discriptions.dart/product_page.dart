import 'package:badges/badges.dart';
import 'package:clippy_flutter/arc.dart';

// import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:eshop/view/product_discriptions.dart/widgets/productNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScreenProductDiscription extends StatefulWidget {
  const ScreenProductDiscription({super.key});

  @override
  State<ScreenProductDiscription> createState() => _ScreenProductDiscription();
}

class _ScreenProductDiscription extends State<ScreenProductDiscription> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------------------------------------//
    var appBar2 = AppBar(
      elevation: 0,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Text(
        "Product Details",
        style: style2,
      ),
      backgroundColor: white1,
      actions: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite, color: pink1)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: cart_bag(context),
        ),
        kwidth20,
      ],
    );
    //--------------------------------------------------------------//
    return Scaffold(
      appBar: appBar2,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset('lib/assets/1.png'),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              color: white1,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Queen Sandals',
                            style: queensandal,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: ((context, index) => Icon(
                                  Icons.favorite,
                                  color: pink1,
                                )),
                            onRatingUpdate: (index) {},
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries .",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ProductNavBar(),
    );
  }

  Badge cart_bag(BuildContext context) {
    return Badge(
      badgeColor: red1,
      badgeContent: const Text(
        '0',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenCart(),
          ),
        ),
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
