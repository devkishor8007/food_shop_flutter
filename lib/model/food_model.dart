import 'package:flutter/material.dart';

class Fruits {
  String name;
  double price;
  String rate;
  Image image;
  String des;

  Fruits({this.name, this.des, this.price, this.rate, this.image});
}

List<Fruits> fruits = [
  Fruits(
      name: "Strawberries",
      rate: "1 lb",
      des:
          "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness",
      price: 2.45,
      image: Image.asset(
        'assets/stra.png',
        fit: BoxFit.cover,
      )),
  Fruits(
      name: "Pineapple",
      des:
          "The pineapple is a tropical plant with an edible fruit and the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.",
      price: 2.45,
      image: Image.asset('assets/pineapple.png', fit: BoxFit.cover)),
  Fruits(
      name: "Blueberries",
      des:
          "Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries. Commercial blueberries—both wild and cultivated —are all native to North America.",
      rate: "1 lb",
      price: 4.07,
      image: Image.asset('assets/blueberries.png', fit: BoxFit.cover)),
  Fruits(
      name: "Dragon Fruit",
      rate: "Avaergae 0.87 lb",
      price: 5.36,
      des:
          "A pitaya or pitahaya is the fruit of several different cactus species indigenous to the Americas.Pitaya usually refers to fruit of the genus Stenocereus, while pitahaya or dragon fruit refers to fruit of the genus Selenicereus, both in the family Cactaceae",
      image: Image.asset(
        'assets/dragan.png',
        fit: BoxFit.cover,
      )),
  Fruits(
      name: "Grapes",
      des:
          "A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis.Grapes can be eaten fresh as table grapes or they can be used for making wine, jam, grape juice, jelly, grape seed extract, raisins, vinegar, and grape seed oil.",
      rate: "1 lb",
      price: 8.22,
      image: Image.asset('assets/grap.png', fit: BoxFit.cover)),
  Fruits(
      name: "Orange",
      rate: "1 lb",
      des:
          "The orange is the fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange",
      price: 8.22,
      image: Image.asset('assets/orange.png', fit: BoxFit.cover)),
  Fruits(
      name: "Mango",
      des:
          "A mango is a stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera.Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae",
      price: 1.07,
      image: Image.asset('assets/mango.png', fit: BoxFit.cover)),
  Fruits(
      name: "Apple",
      rate: "1 lb",
      des:
          "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.",
      price: 2.87,
      image: Image.asset('assets/apple.png', fit: BoxFit.cover)),
];
