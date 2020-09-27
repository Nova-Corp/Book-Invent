import 'package:flutter/material.dart';

List<Container> getDotIndicatorForSlide(List _imageList, int _current) {
  var indicatorList = List<Container>();
  _imageList.forEach((i) {
    var cont = Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _current == i - 1
              ? Color.fromRGBO(0, 0, 0, 0.9)
              : Color.fromRGBO(0, 0, 0, 0.4)),
    );
    indicatorList.add(cont);
  });
  return indicatorList;
}
