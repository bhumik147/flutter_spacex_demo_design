import 'package:flutter/material.dart';
import 'package:flutter_app/models/EventModel.dart';

class detail extends StatelessWidget {
  final EventModel eventModel;

  detail(this.eventModel);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceX',
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: detailPage(title: 'SpaceX'),
    );
  }
}

class detailPage extends StatefulWidget {
  detailPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> with TickerProviderStateMixin {
  ScrollController _scrollViewController;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _scrollViewController.dispose();

    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: BackButton(color: Colors.white),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.share))
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/crs.png"),
            SizedBox(height: 30),
            Container(
              margin:
                  const EdgeInsets.only(left: 25, top: 5, right: 35, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("ROCKET",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("Falcon 1",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: 30),
                  Text("LAUNCH DATE",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("THU Oct 17 5:30:00 2019",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("LAUNCH SITE",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("CCAFS SLC 40",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("LAUNCH STATUS",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("Success",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("DETAILS",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text(
                      "Last Launch of the original Falcon 9 v1.0 launch vehicle",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("ROCKET SUMMARY",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("Falcon 9",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("TYPE",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Text("v1.0",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30),
                            Text("FIRST STAGE",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            SizedBox(height: 5),
                            Text("Cores: 4",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30),
                            Text("SECOND STAGE",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            SizedBox(height: 5),
                            Text("Payload: 150kg",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        )
                      ]),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("YOUTUBE",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                          SizedBox(height: 5),
                          Container(
                            child: FlatButton(
                              onPressed: () => {},
                              color: Colors.red,
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 5,
                              minWidth: 120,
                              child: Column(
                                // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Image.asset(
                                    'assets/youtube.png',
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("REDDIT",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                          SizedBox(height: 5),
                          Container(
                            child: FlatButton(
                              onPressed: () => {},
                              color: Colors.deepOrangeAccent,
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 5,
                              minWidth: 120,
                              child: Column(
                                // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Image.asset(
                                    'assets/reddit.png',
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("SNEAK PEAK",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                ],
              ),
            ),Container(
              height: 350,
              width: 400,
              child: PageView(

                controller: pageController,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/Rectangle 2.png"),
                      ],
                    ),
                  ),Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                    Image.asset("assets/Rectangle 2.png"),
                    ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
