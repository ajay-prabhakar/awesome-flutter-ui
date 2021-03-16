import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/utils/constants.dart';
import 'package:movie_streaming_app/utils/fadeAnimation.dart';
import 'package:movie_streaming_app/views/episodes_screen.dart';

class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: navBar(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.53,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/stranger_things_background.jpg',
                    fit: BoxFit.fitWidth),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 300,
                        width: 200,
                        child: Image.asset(
                            "assets/images/stranger_things_poster.jpg"),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            kPrimaryColor.withOpacity(0.0),
                            kPrimaryColor,
                          ],
                          stops: [
                            0.5,
                            1.5
                          ])),
                )
              ],
            ),
          ),
          PlayAndPauseButtons(),
          movieNames(),
          movieDetails(),
        ],
      ),
    );
  }

  Widget PlayAndPauseButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44,
          width: 140,
          color: kPrimaryColor,
          child: ElevatedButton.icon(
            icon: Icon(Icons.play_arrow),
            label: Text(
              "Watch",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () => print("it's pressed"),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                primary: kRedColor),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 44,
          width: 140,
          color: kPrimaryColor,
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.local_movies,
              color: Colors.black,
            ),
            label: Text(
              "Episodes",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onPressed: () => buildBottomSheet(),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                primary: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget movieNames() {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          "Stranger Things",
          style: kHeadingextStyle,
        ),
        SizedBox(height: 5),
        Text(
          "8.7 IMDB  ·  50m  ·  2016",
          style: kSubtitleTextSyule,
        ),
      ],
    );
  }

  Widget movieDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Latest: ",
                    style: TextStyle(
                      color: kRedColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: "Espisode 8(season 3)",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ]),
            ),
            SizedBox(height: 10),
            Text(
              "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying super natural forces, and one strange girl",
              style: kSubtitleTextSyule,
            ),
            SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(text: "Genres: ", style: kBoldedSubtitleTextSyule),
                TextSpan(
                    text: "Drama, Mystery, Sci-Fi & Fantacy",
                    style: kSubtitleTextSyule),
              ]),
            ),
            SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(text: "Stars: ", style: kBoldedSubtitleTextSyule),
                TextSpan(
                    text:
                        "Mille Bobby Brown, Winona Ryder, David Harbour Finn Wolfhard, Caleb McLaughlin, Natalia Dyer.....",
                    style: kSubtitleTextSyule),
              ]),
            ),
            SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(text: "Companies: ", style: kBoldedSubtitleTextSyule),
                TextSpan(
                    text: "21 laps entertainment", style: kSubtitleTextSyule),
              ]),
            ),
          ],
        ),
      ),
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

  void buildBottomSheet() async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45))),
        context: context,
        backgroundColor: kPrimaryColor,
        isScrollControlled: true,
        builder: (context) {
          return FadeAnimation(
            .6,
            EpisodesScreen(),
          );
        });
  }
}
