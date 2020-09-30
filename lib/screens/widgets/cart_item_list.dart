import 'package:flutter/material.dart';

ListView getCartItemList() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: 2,
    itemBuilder: (context, position) {
      return Container(
        margin: EdgeInsets.only(left: 8, right: 8),
        height: 121,
        child: GestureDetector(
          onTap: () => {},
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '- by Author 1',
                        maxLines: 2,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 14),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => {},
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.add), onPressed: () => {}),
                        Container(
                            width: 35,
                            height: 35,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 10),
                                hintText: '1',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blue[300], width: 1.5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                              ),
                            )),
                        IconButton(
                            icon: Icon(Icons.remove), onPressed: () => {}),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
