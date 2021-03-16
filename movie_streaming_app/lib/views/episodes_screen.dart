import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/utils/constants.dart';

class EpisodesScreen extends StatefulWidget {
  @override
  _EpisodesScreenState createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Season 1",
                style: kTitleTextStyle,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                CupertinoIcons.arrowtriangle_down_circle,
                size: 21,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 365,
            child: ListView(
              children: <Widget>[
                buildEpisode(
                  "assets/images/episodes/one.jpg",
                  "One",
                  "1",
                  "The Vanishing of Will Byers",
                  "49",
                  "On his way home from a friend's house, young Will sees something terrifying. Nearby, a sinister secret lurks in the depths of a government lab.",
                ),
                buildEpisode(
                  "assets/images/episodes/2.jpg",
                  "Two",
                  "2",
                  "The Weirdo on Maple Street",
                  "56",
                  "Lucas, Mike and Dustin try to talk to the girl they found in the woods. Hopper questions an anxious Joyce about an unsettling phone call.",
                ),
                buildEpisode(
                  "assets/images/episodes/3.jpg",
                  "Three",
                  "3",
                  "Holly, Jolly",
                  "52",
                  "An increasingly concerned Nancy looks for Barb and finds out what Jonathan's been up to. Joyce is convinced Will is trying to talk to her.",
                ),
                buildEpisode(
                  "assets/images/episodes/4.jpg",
                  "Four",
                  "4",
                  "The Body",
                  "46",
                  "Refusing to believe Will is dead, Joyce tries to connect with her son. The boys give Eleven a makeover. Nancy and Jonathan form an unlikely.",
                ),
                buildEpisode(
                  "assets/images/episodes/5.jpg",
                  "Five",
                  "5",
                  "The Flea and the Acrobat",
                  "51",
                  "Hopper breaks into the lab while Nancy and Jonathan confront the force that took Will. The boys ask Mr. Clarke how to travel to another dimension.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEpisode(String imagePath, String episodeNumber, String number,
      String episdoeName, String minutes, String episodeDetails) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 90,
              width: 150,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Episode " + number,
                    style: kSubtitleTextSyule,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Chapter",
                        style: kBoldedSubtitleTextSyule,
                      ),
                      TextSpan(
                          text: " " + episodeNumber + ": ",
                          style: TextStyle(
                            color: kRedColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: episdoeName, style: kBoldedSubtitleTextSyule),
                    ]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.cloud_download_fill,
                        size: 15,
                      ),
                      Text(
                        "  Download  ·  " + minutes + " min",
                        style: kSubtitleTextSyule,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        Text(
          episodeDetails,
          style: kSubtitleTextSyule,
        ),
        SizedBox(height: 15),
        Divider(height: 4, color: kDividerColour),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
