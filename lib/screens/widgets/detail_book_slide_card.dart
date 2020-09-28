import 'package:flutter/material.dart';

Builder getDetailBookSlideCard(int i) {
  return Builder(
    builder: (BuildContext context) {
      return Container(
        child: Stack(children: [
          Image.asset(
            'asset/books/book_$i.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              stops: [0.1, 0.5],
            )),
          )
        ]),
      );
    },
  );
}
