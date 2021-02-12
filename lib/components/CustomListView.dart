import 'package:flutter/material.dart';
import 'package:flutter_app/models/EventModel.dart';

import '../detail.dart';

class CustomListView extends StatelessWidget {
  List<EventModel> _events;
  bool launches;

  CustomListView(this._events, this.launches);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _events.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => detail(_events[index])),
            );
          },
          child: Container(
            color: Colors.white,
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 35, bottom: 5),
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                        width: 85,
                        height: 85,
                        margin: const EdgeInsets.only(
                            left: 25, top: 10, right: 50, bottom: 10),
                        child: (Image.asset('assets/${_events[index].image}'))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_events[index].type,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        SizedBox(height: 5),
                        Text(_events[index].title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        if (launches) SizedBox(height: 5),
                        if (launches)
                          Text(_events[index].model,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        if (!launches)
                          Container(
                            child: MaterialButton(
                              onPressed: () {},
                              color: ActiveInactive(_events[index].status),
                              height: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(_events[index].status,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        if (launches) SizedBox(height: 5),
                        if (launches)
                          Text(_events[index].date,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Color ActiveInactive(String status) {
    return status == "ACTIVE" ? Colors.green : Colors.red;
  }
}
