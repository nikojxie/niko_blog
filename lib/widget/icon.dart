import 'package:flutter/material.dart';

class IconBlog extends StatelessWidget {

  final int code;
  final Color color;
  final double size;
  final String family;

  IconBlog({
    @required this.code,
    this.color,
    this.size,
    this.family = 'Blog'
  });


  @override
  Widget build(BuildContext context) {
    return Icon(
      IconData(code,fontFamily: family),
      color: color,
      size:size
    );
  }
}
