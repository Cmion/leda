import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/utils/constants.dart';
import 'package:leda/utils/logo.dart';
import 'package:leda/utils/routes.dart';
import 'package:leda/utils/utils.dart';

class Details extends StatefulWidget {
  final Product product;

  Details({Key key, @required this.product}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  bool isDescriptionExpanded = false;

  toggleDescription() {
    setState(() {
      isDescriptionExpanded = !isDescriptionExpanded;
    });
  }

  //TODO: Implement SliverApp Here.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultLightColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        reverse: true,
        child: Stack(
          children: [
            buildImageContainer(context),
            // Animates the size of the element when the height of its content changes
            buildAnimatedSize(context)
          ],
        ),
      ),
    );
  }

  Container buildImageContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.55,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, productLiveViewRoute,
              arguments: widget.product);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Hero(
            tag: widget.product.id,
            transitionOnUserGestures: true,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  AnimatedSize buildAnimatedSize(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: Duration(milliseconds: 400),
      curve: Curves.fastLinearToSlowEaseIn,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.55 - 40),
        padding: EdgeInsets.only(top: defaultPadding),
        decoration: BoxDecoration(
            color: defaultLightColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(detailsBorderRadius),
                topRight: Radius.circular(detailsBorderRadius))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: defaultPadding),
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: SelectableText(
                      humanize(widget.product.title),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway',
                          fontSize: fontSizeM,
                          color: defaultDarkColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SvgPicture.asset(
                            'assets/icons/star.svg',
                            height: 20,
                            width: 20,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          widget.product.reviews.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway',
                              fontSize: fontSizeS,
                              color: defaultDarkColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: fontSizeS,
                        color: defaultDarkColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.description,
                          maxLines: isDescriptionExpanded ? null : 2,
//                            overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: fontSizeS1,
                              color: defaultDarkColorSec60,
                              height: 2,
                              fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () => toggleDescription(),
                          child: Text(
                            isDescriptionExpanded ? 'see less' : '...see more',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: fontSizeS1,
                                color: isDescriptionExpanded
                                    ? defaultDarkColor
                                    : defaultDarkColorSec,
                                fontStyle: FontStyle.italic,
                                height: 2,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: defaultPadding),
                    child: Text(
                      'Price',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          fontSize: fontSizeS,
                          color: defaultDarkColor),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: defaultPadding),
                    child: Text(
                      '\$${widget.product.price}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway',
                          fontSize: fontSizeM,
                          color: defaultDarkColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  bottom: defaultPadding + defaultPadding / 2),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(buttonHeight)),
                  child: MaterialButton(
                    onPressed: () {},
                    height: buttonHeight,
                    minWidth: buttonWidth,
                    enableFeedback: true,
                    color: defaultDarkColor,
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          fontSize: fontSizeS,
                          color: defaultLightColor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          'assets/icons/arrow_left.svg',
          height: 20,
          width: 20,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/shopping_bag.svg',
            width: 20,
            height: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/more.svg',
            height: 20,
            width: 20,
          ),
        )
      ],
      title: Logo(),
    );
  }
}
