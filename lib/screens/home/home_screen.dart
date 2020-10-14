import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/screens/home/components/product_card.dart';
import 'package:leda/utils/constants.dart';
import 'package:leda/utils/logo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String discoverType = 'recommended';

  switchDiscoverType(String type) {
    setState(() {
      discoverType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Discover',
                    style: TextStyle(
                        color: defaultDarkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeL,
                        fontFamily: 'Raleway'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/search.svg',
                        width: 20,
                        height: 20,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/equalizer.svg',
                        width: 20,
                        height: 20,
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    switchDiscoverType('recommended');
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          color: discoverType == 'recommended'
                              ? defaultDarkColor
                              : defaultDarkColorSec,
                          fontSize: fontSizeS),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    switchDiscoverType('popular');
                  },
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Raleway',
                        color: discoverType == 'popular'
                            ? defaultDarkColor
                            : defaultDarkColorSec,
                        fontSize: fontSizeS),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.55),
              itemBuilder: (BuildContext context, int index) {
                Product product = products[index];
                return ProductCard(product: product);
              },
              itemCount: products.length,
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      brightness: Brightness.light,
      centerTitle: true,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 20,
          height: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/shopping_bag.svg',
            width: 20,
            height: 20,
          ),
          onPressed: () {},
        ),
      ],
      title: Logo(),
      backgroundColor: Colors.white,
    );
  }
}
