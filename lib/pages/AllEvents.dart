import 'package:flutter/material.dart';
import 'dart:async';
import 'package:togetherness/widgets/HeaderWidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AllEvents extends StatefulWidget {
  @override
  _AllEventsState createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  Future getEvents()
  async {
    final firestoreInstance = Firestore.instance;

    QuerySnapshot qn= await firestoreInstance.collection("events").getDocuments();
//    print(qn.documents[0]);
      return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Events"),),
      body: Container(
        child: FutureBuilder(future:getEvents() ,builder: (_, snapshot){
            if (snapshot.connectionState==ConnectionState.waiting)
              {
                return Center(
                  child: Text("Loading..."),
                );
              }
            else
              {

                  return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_,index){
                    DateTime myDateTime = DateTime.parse(snapshot.data[index].data["date"].toDate().toString());
                     return new Card(
                         shape: RoundedRectangleBorder(
                           side: BorderSide(color: Colors.white70, width: 1),
                           borderRadius: BorderRadius.circular(10),
                         ),
                       elevation: 10.0,
                       margin: EdgeInsets.all(15.0),
                      child: new Container(
                        padding: new EdgeInsets.all(14.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                                color: Colors.black,
                                alignment: Alignment(0.0, 0.0),
                           child: new Text(
                              snapshot.data[index].data["name"],
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 30.0,
                                  color: Colors.white
                              ),
                                  textAlign: TextAlign.center,
                            ),
                            ),
                            SizedBox(height:10.0 ,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children :<Widget>[
                                new Text(
                                  myDateTime.toString(),
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                ),
                                new Text(
                                  snapshot.data[index].data["location"] ,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                )
                              ]
                            ),


                            SizedBox(height:10.0 ,),
                            new Text(
                              snapshot.data[index].data["description"],
                              style: TextStyle(
                                fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                     )
                     );
                  });
              }
        }),
      ),
    );
  }
}