import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_shop/model/food_model.dart';
import 'package:food_shop/page/detailPage.dart';

TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(mq),
              SizedBox(
                height: mq.height * 0.05,
              ),
              Text(
                "Fruits and berries",
                style: textStyle,
              ),
              buildSearchButton(),
              SizedBox(
                height: mq.height * 0.025,
              ),
              buildGridView(mq, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridView(Size mq, BuildContext context) {
    return Container(
      height: mq.height,
      child: GridView.count(
          controller: ScrollController(),
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: fruits
              .map(
                (item) => Card(
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(17),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailPage(
                                    img: item.image,
                                    name: item.name,
                                    description: item.des,
                                    price: item.price.toString(),
                                  )));
                    },
                    child: Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.name),
                            Text(item.rate ?? ""),
                            Text('\$ ${item.price.toString()}'),
                            Container(
                                height: 130,
                                width: mq.width * 0.35,
                                child: item.image),
                          ],
                        )),
                  ),
                ),
              )
              .toList()),
    );
  }

  Widget buildSearchButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
      child: TextFormField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey)),
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget buildAppBar(Size mq) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 4),
      child: Container(
        height: mq.height * 0.07,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          OutlinedButton(
            onPressed: () {},
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
    );
  }
}
