import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            CarouselSlider(
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
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.purple,
                                Colors.blue
                              ], // whitish to gray
                              tileMode: TileMode
                                  .repeated, // repeats the gradient over the canvas
                            ),
                            image: DecorationImage(
                              image: AssetImage('asset/books/book_$i.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Center(
                          child: Text(
                            'Book $i',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: getDotIndicatorForSlide())
          ],
        ),
      ),
    );
  }

  List<Container> getDotIndicatorForSlide() {
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
}
