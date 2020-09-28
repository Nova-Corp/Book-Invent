import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/dot_indicator_widget.dart';
import '../widgets/available_book_list.dart';
import '../widgets/home_book_slide_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List _imageList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomePage',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                height: 244.0,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 234.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      enableInfiniteScroll: false,
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: _imageList.map((i) {
                    return getHomeBookSlideCard(i);
                  }).toList(),
                ),
              ),
              getDotIndicatorForSlide(
                  _imageList, _current, Color.fromRGBO(0, 0, 0, 0.9)),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Available Books',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              getAvailableBookList()
            ],
          ),
        ),
      ),
    );
  }
}
