import 'package:flutter/material.dart';
import 'package:flutter_app/components/CustomListView.dart';
import 'package:flutter_app/models/EventModel.dart';

class detail extends StatelessWidget {
  final EventModel eventModel;

  detail(this.eventModel);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  leading: BackButton(color: Colors.white),
                  pinned: true,
                  floating: true,
                  forceElevated: boxIsScrolled,
                  backgroundColor: Colors.black,
                  expandedHeight: 150,
                  actions: <Widget>[
                    IconButton(onPressed: () {}, icon: Icon(Icons.share))
                  ],
                )
              ];
            },
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      left: 25, top: 5, right: 35, bottom: 5),
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
                                SizedBox(height: 30),
                                Text("YOUTUBE",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                                Container(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.red,
                                    height: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text("Y",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ),

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
                                SizedBox(height: 30),
                                Text("REDDIT",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                                Container(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.red,
                                    height: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text("R",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ],
                  ),
                )
              ],
            )));
  }
}
