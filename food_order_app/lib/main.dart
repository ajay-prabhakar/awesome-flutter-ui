import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'animations/FadeAnimation.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  color: Color(getColorHexFromStr('#FDD148')),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(getColorHexFromStr('#FEE16D'))
                            .withOpacity(0.4)),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Color(getColorHexFromStr('#FEE16D'))
                              .withOpacity(0.5))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/user.png'))),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 120.0),
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 30.0,
                          ),
                        ),
                        SizedBox(height: 15.0),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Hello, Chromicle',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Hunting for delicious food?',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset("assets/icons/search.svg"),
                            SizedBox(width: 14),
                            Text(
                              "Search for anything",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFA0A5BD),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0)
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FadeAnimation(
                      1, foodItemsCategory(isActive: true, title: 'Burger')),
                  FadeAnimation(1.3,
                      foodItemsCategory(isActive: false, title: 'Noodels')),
                  FadeAnimation(1.4,
                      foodItemsCategory(isActive: false, title: 'Biriyani')),
                  FadeAnimation(1.5,
                      foodItemsCategory(isActive: false, title: 'Fried Rice')),
                  FadeAnimation(
                      1.6, foodItemsCategory(isActive: false, title: 'Pizza')),
                  FadeAnimation(1.9,
                      foodItemsCategory(isActive: false, title: 'Starters'))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(
                        1.4,
                        foodItem('assets/images/chille-cheese.jpg', "\$ 15",
                            "Chilli Cheese")),
                    FadeAnimation(
                        1.5,
                        foodItem('assets/images/delish-bloody-mary.jpg',
                            '\$ 18', "Delish bloody")),
                    FadeAnimation(
                        1.6,
                        foodItem('assets/images/lam-burger.jpg', "\$ 21",
                            "lam burger")),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45, right: 80,top: 10),
                    child: Column(
                      children: [
                        Text("2 Item(s)",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.yellow[700],
                            )),
                        Text("added to cart",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ))
                      ],
                    ),
                  ),
                  PlaceOrderButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget foodItemsCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.black45 : Colors.black,
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }

  Widget PlaceOrderButton() {
    return AspectRatio(
      aspectRatio: 3,
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          child: Text(
            "Place Order",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget foodItem(image, price, food) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                  .2,
                  .9
                ], colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ])),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        food,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
}
