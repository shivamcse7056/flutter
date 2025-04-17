import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          height: _deviceHeight,
          width: _deviceWidth,
          child: _pageTitle(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/moon.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropDownMenuItem> _items =
        ['James Webb', 'Shivam Tiwari', 'Shivam Shukla'].map((e) {
          return DropDownMenuItem(child: Text(e), value: e);
        }).toList();
    return Container(child: DropDownButton(onChange: (_) {}, items: _items));
  }
}
