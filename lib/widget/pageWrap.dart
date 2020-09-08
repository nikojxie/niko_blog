import 'package:flutter/material.dart';

class PageWrap extends StatelessWidget {

  final Widget header;
  final Widget body;
  final int backgroundColor;
  final int headerColor;
  final FloatingActionButton button;

  PageWrap({
    this.header,
    @required this.body,
    this.backgroundColor,
    this.headerColor,
    this.button
  });

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}
