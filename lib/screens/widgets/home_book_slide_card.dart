import 'package:flutter/material.dart';

Builder getHomeBookSlideCard(int i) {
  return Builder(
    builder: (BuildContext context) {
      return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Stack(
            children: <Widget>[
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
              ),
              Positioned(
                bottom: 12,
                left: 16,
                child: Text(
                  "Book $i",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              )
            ],
          ));
    },
  );
}
