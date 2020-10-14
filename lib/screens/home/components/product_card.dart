import 'package:flutter/material.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/utils/constants.dart';
import 'package:leda/utils/routes.dart';
import 'package:leda/utils/utils.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, productDetailsRoute, arguments: product);
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Hero(
                    tag: product.id,
//                    transitionOnUserGestures: true,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          humanize(product.title),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: fontSizeS,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              color: defaultDarkColor),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '\$' + product.price.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: fontSizeS,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              color: defaultDarkColorSec60),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
