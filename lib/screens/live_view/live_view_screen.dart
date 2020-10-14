import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/utils/constants.dart';
import 'package:leda/utils/logo.dart';

class LiveView extends StatefulWidget {
  final Product product;
  LiveView({@required this.product});

  @override
  _LiveViewState createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

// TODO: Implement double tap to zoom in
// TODO: Implement cube swipe.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultDarkColor,
      appBar: buildAppBar(context),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          onHorizontalDragStart: (DragStartDetails details) {
            Offset offset =
                Offset(details.globalPosition.dx, details.globalPosition.dy);
            print('OFFSET START: $offset');
          },
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            Offset offset =
                Offset(details.globalPosition.dx, details.globalPosition.dy);
            print('OFFSET UPDATE: $offset');
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
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      brightness: Brightness.dark,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          'assets/icons/arrow_left.svg',
          height: 20,
          width: 20,
          color: defaultLightColor,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/shopping_bag.svg',
            width: 20,
            height: 20,
            color: defaultLightColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/more.svg',
            height: 20,
            width: 20,
            color: defaultLightColor,
          ),
        )
      ],
      title: Logo(color: logoColorDark),
    );
  }
}
