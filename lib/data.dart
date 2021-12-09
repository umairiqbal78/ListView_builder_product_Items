import 'package:flutter/material.dart';
import 'package:new_project/api.dart';

class Api_data extends StatefulWidget {
  @override
  _Api_dataState createState() => _Api_dataState();
}

class _Api_dataState extends State<Api_data> {
  List data = [{}];
  @override
  void initState() {
    super.initState();
    getProductsData();
  }

  getProductsData() async {
    var _datafromApi_data = await getData();
    setState(() {
      data = _datafromApi_data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 20.0,
            );
          },
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 170,
                  color: Colors.white,
                  child: Flexible(
                    child: Row(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          width: 100,
                          height: 170,
                          child: Image.network(
                            data[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index]['title'],
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Flexible(
                                  child: SizedBox(
                                    height: 5.0,
                                  ),
                                ),
                                Text(data[index]['category'],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    )),
                                const Flexible(
                                  child: SizedBox(
                                    height: 5.0,
                                  ),
                                ),
                                Text(
                                  "\$ " + data[index]["price"].toString(),
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                                const Flexible(
                                  child: SizedBox(
                                    height: 12.0,
                                  ),
                                ),
                                Wrap(
                                  spacing: 0.0,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.shopping_bag),
                                      color: Colors.grey,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite),
                                      color: Colors.grey,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.view_carousel_rounded),
                                      color: Colors.grey,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.done_outline_rounded),
                                      color: Colors.grey,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: RotatedBox(
                                  quarterTurns: 3,
                                  child: SizedBox(
                                    // width: 140.0,
                                    // height: 65.0,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.lightBlue[400],
                                            shape: RoundedRectangleBorder(
                                                //to set border radius to button
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: const Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Text(
                                            "Book now",
                                            style: TextStyle(
                                              fontSize: 19.0,
                                            ),
                                          ),
                                        )),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
