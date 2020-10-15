import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/utils/constants.dart';
import 'package:leda/utils/logo.dart';
import 'package:leda/utils/utils.dart';

class LiveView extends StatefulWidget {
  final Product product;
  LiveView({@required this.product});

  @override
  _LiveViewState createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Offset _offset = Offset(0.0, 0.0);
  Offset _gp = Offset(0, 0);
  Offset _imageOffset = Offset(0.0, 0.0);

  _handleImageDrag(Offset offset) {
    setState(() {
      _imageOffset = offset;
    });
  }

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
    return Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.0018)
          ..rotateY(-toRadian(_offset.dx * 0.15))
          ..translate(_offset.dx),
        alignment: FractionalOffset.center,
        child: GestureDetector(
          onHorizontalDragUpdate: (details) => setState(() {
            _offset = Offset(
                (_offset.dx + details.delta.dx), details.delta.dy + _offset.dy);
          }),
          onHorizontalDragEnd: (DragEndDetails _) {
            if (_offset.dx >= screenWidth(context, percentage: 0.5)) {
              setState(() {
                _offset = Offset(screenWidth(context, sub: 60), _offset.dy);
              });
            } else {
              setState(() {
                _offset = Offset(0, 0);
              });
            }
          },
          // onDoubleTap: () => setState(() => _offset = Offset(0.2, 0.6)),
          child: _app(context),
        ));
  }

  Widget _app(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: Scaffold(
        backgroundColor: defaultDarkColor,
        appBar: buildAppBar(context),
        body: Center(
          child: Transform(
            transform: Matrix4.translationValues(0, _imageOffset.dy, 0),
            alignment: FractionalOffset.topRight,
            child: Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: GestureDetector(
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  Offset offset = Offset(
                      (details.delta.dx + _imageOffset.dx)
                          .clamp(0, screenWidth(context))
                          .toDouble(),
                      (details.delta.dy + _imageOffset.dy)
                          .clamp(0, screenHeight(context))
                          .toDouble());

                  _handleImageDrag(offset);
                },
                onVerticalDragEnd: (DragEndDetails details) {
                  if (_imageOffset.dy >=
                      screenHeight(context, percentage: 0.5)) {
                    Navigator.pop(context);
                  } else {
                    _handleImageDrag(Offset(0.0, 0.0));
                  }
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
