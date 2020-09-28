import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/detail_book_slide_card.dart';
import '../widgets/dot_indicator_widget.dart';

class DetailsPage extends StatefulWidget {
  // final String details;
  // final int id;
  // DetailsPage({this.details, this.id});

  @override
  _DetailsPage createState() => _DetailsPage();
}

class _DetailsPage extends State<DetailsPage> {
  int _current = 0;
  List _imageList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DetailsPage',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 264.0,
              child: Stack(children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 264.0,
                      autoPlay: false,
                      viewportFraction: 1,
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
                    return getDetailBookSlideCard(
                      i,
                    );
                  }).toList(),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: getDotIndicatorForSlide(
                        _imageList, _current, Colors.white.withOpacity(.7)))
              ]),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to influance friends and people.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '- by Shanmugam',
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
