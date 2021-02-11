import 'package:flutter/material.dart';
import 'package:flutter_app/components/CustomListView.dart';
import 'package:flutter_app/models/EventModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX',
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SpaceX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text('SpaceX'),
                centerTitle: true,
                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.black,
                expandedHeight: 150,
                actions: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
                bottom: TabBar(
                  indicatorColor: Colors.red,
                  indicatorWeight: 5,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.only(left: 40.0, right: 40.0),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.red,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      height: 40,
                      padding: const EdgeInsets.only(left: 15.0, right: 0),
                      child: Center(
                        child: Text("Upcoming"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      child: Center(
                        child: Text("Launches"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      padding: const EdgeInsets.only(left: 0.0, right: 20.0),
                      child: Center(
                        child: Text("Rockets"),
                      ),
                    ),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Upcoming(),
              Launches(),
              Rockets(),
            ],
            controller: _tabController,
          ),
        ));
  }
}

class Upcoming extends StatelessWidget {
  List<EventModel> upcomingData = [
    EventModel("LAUNCH", "Starlink 2", "CCAES SLC 40", "16-10-2016",
        "falconsat01.png", "")
  ];

  @override
  Widget build(BuildContext context) {
    return CustomListView(upcomingData, true);
  }
}

class Launches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<EventModel> launchesData = [
      EventModel("LAUNCH", "Starlink 2", "CCAES SLC 40", "16-12-2014",
          "falconsat01.png", ""),
      EventModel(
          "LAUNCH", "DemoSat", "AAAES SLC 40", "06-07-2018", "falcon9.png", ""),
      EventModel("LAUNCH", "Falcon 9 Test", "CCAES SEC 40", "18-03-2019",
          "demosat02.png", ""),
      EventModel(
          "LAUNCH", "CRS - 2", "CAAES SLC 40", "18-12-2019 ", "crs.png", ""),
    ];

    return CustomListView(launchesData, true);
  }
}

class Rockets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<EventModel> rocketData = [
      EventModel("ROCKET", "Falcon 1", "", "", "falconsat01.png", "INACTIVE"),
      EventModel("ROCKET", "Falcon 1", "", "", "falcon09.png", "ACTIVE"),
      EventModel(
          "ROCKET", "Big Falcon Rocket", "", "", "demosat02.png", "INACTIVE"),
    ];

    return CustomListView(rocketData, false);
  }
}
