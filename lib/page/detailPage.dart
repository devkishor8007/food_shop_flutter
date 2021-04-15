import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  Image img;
  String name;
  String price;
  String description;
  DetailPage({this.name, this.price, this.description, this.img});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: mq.height * 0.4,
                child: buildStackImage(mq, context),
              ),
              buildFoodDetail(mq),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFoodDetail(Size mq) {
    return Container(
      height: mq.height * 0.6,
      width: mq.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            Text("1 each"),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.grey[300]),
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.grey[300]),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 28, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.grey[300]),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$ " + widget.price,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Product Description',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.description,
              style: TextStyle(letterSpacing: 1.3, fontSize: 18),
            ),
            SizedBox(
              height: mq.height * 0.07,
            ),
            Row(
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(60, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                      size: 39,
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(230, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPrimary: Colors.black,
                        primary: Colors.yellow),
                    child: Text("Add to Cart"))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStackImage(Size mq, BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.yellow,
          alignment: Alignment.bottomCenter,
          child: widget.img,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, top: 4),
            child: Container(
              height: mq.height * 0.07,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(60, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.grey[300]),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.alignLeft,
                      color: Colors.black,
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
