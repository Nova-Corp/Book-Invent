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
        body: SafeArea(
          child: Column(
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
                          _imageList, _current, Colors.white.withOpacity(.7))),
                  Positioned(
                      bottom: 8,
                      right: 12,
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.label,
                            color: Colors.white,
                          )
                        ],
                      ))
                ]),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: Text(
                      'How to influance friends and people. ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: Text(
                      '- by Shanmugam',
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Buy Now')],
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
