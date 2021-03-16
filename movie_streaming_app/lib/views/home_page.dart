import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/utils/constants.dart';
import 'package:movie_streaming_app/utils/fadeAnimation.dart';
import 'package:movie_streaming_app/views/movie_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navBar(),
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset("assets/images/main_page_image.jpg"),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sabrina",
                      style: kHeadingextStyle,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "7.5 IMDB  ·  60m  ·  2018",
                      style: kSubtitleTextSyule,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "As her 16th birthday nears, Sabrina  must choose between the witch world of her family and the human .....",
                      style: kSubtitleTextSyule,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    continueWatching(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget continueWatching() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "C",
                style: TextStyle(
                  color: kRedColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: "ontinue", style: kTitleTextStyle),
            TextSpan(
                text: " W",
                style: TextStyle(
                  color: kRedColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: "atching", style: kTitleTextStyle),
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FadeAnimation(
                  1.4,
                  foodItem('assets/images/movie1.jpg', "\$ 15",
                      "Never Have I Ever")),
              FadeAnimation(
                  1.5,
                  foodItem(
                      'assets/images/movie2.jpg', '\$ 18', "Finding Ohana")),
              FadeAnimation(1.6,
                  foodItem('assets/images/movie3.jpg', "\$ 21", "Sabrina")),
              FadeAnimation(
                  1.6,
                  foodItem(
                      'assets/images/movie4.png', "\$ 21", "Stranger Things")),
            ],
          ),
        ),
      ],
    );
  }

  Widget foodItem(image, price, food) {
    return InkWell(
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomCenter, stops: [
                        .2,
                        .9
                      ], colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.3),
                      ])),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Text(
                          food,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              progressBar(),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovieScreen()),
        );
      },
    );
  }

  Widget progressBar() {
    return Stack(
      children: <Widget>[
        Container(
          height: 7,
          width: 100,
          decoration: BoxDecoration(
            color: kGreyColor,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        Container(
          height: 7,
          width: 40,
          decoration: BoxDecoration(
              color: kRedColor,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
      ],
    );
  }

  Widget navBar() {
    return SizedBox(
      height: 65,
      child: Theme(
        data: Theme.of(context).copyWith(
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: kRedColor,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: kRedColor))),
        // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("Search"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.play_arrow_outlined),
              title: new Text("Movies"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.live_tv),
              title: new Text("TV Shows"),
            )
          ],
        ),
      ),
    );
  }
}
