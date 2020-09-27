import 'package:flutter/material.dart';

ListView getAvailableBookList() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: 2,
    itemBuilder: (context, position) {
      return Container(
        margin: EdgeInsets.only(left: 8, right: 8),
        height: 121,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          child: Row(
            children: [
              Container(
                width: 151,
                height: 121,
                child: Image.asset(
                  'asset/books/book_1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Books 1',
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '- by Author 1',
                      maxLines: 2,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Price: 120',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 56,
                child: FlatButton(
                  onPressed: () => {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.blueGrey,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.blueGrey),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
