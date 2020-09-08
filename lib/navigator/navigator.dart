import 'package:flutter/material.dart';
import 'package:niko_blog/widget/icon.dart';

class Base extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {

  int _currentIndex = 0;

  PageController _controller = PageController(
      initialPage: 0
  );

  final Color _defaultColor = Color(0xFF999999);
  final Color _activeColor = Color(0xFFC7A583);

  //code : 16进制icon , title: 标题 , index: 顺序
  BottomNavigationBarItem createNavigationItem (int code, String title, int index) {
    return BottomNavigationBarItem(
      icon: IconBlog(code: code, color: _defaultColor, size: 22.0),
      activeIcon: IconBlog(code: code, color: _activeColor, size:22.0),
      title: Text(title, style: TextStyle(
        color: _currentIndex == index ? _activeColor : _defaultColor
      ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: <Widget>[
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          createNavigationItem(0xe625, '首页', 0),
          createNavigationItem(0xe713, '分享', 1),
          createNavigationItem(0xe612, '我的', 2)
        ]
      ),
    );
  }
}
