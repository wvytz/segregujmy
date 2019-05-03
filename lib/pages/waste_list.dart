import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class WasteList extends StatefulWidget {
  WasteList({Key key, this.title}) : super(key:key);
  final String title;
  @override
  _WasteListState createState() =>  _WasteListState();
}

class  _WasteListState extends State<WasteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Firestore.instance.collection('odpady1').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData){
              const Text('loading');
            }
            else{
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index){
                    DocumentSnapshot mypost = snapshot.data.documents[index];
                    
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100.0,
                          child: Padding(
                            padding: EdgeInsets.only(top:2.0, bottom: 2.0),
                            child: Material(
                              color: Colors.white,
                              //elevation: 5.0,
                              shadowColor: Colors.black12,
                              child: Center(child: Padding(
                                padding: EdgeInsets.all(4.0),
                                  child: Column(children: <Widget>[
                                    SizedBox(height:20.0),
                                    Text('${mypost['title']}',
                                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20.0),
                                    Text('${mypost['container']}',
                                    style: TextStyle(fontSize: 8.0),
                                    )],),
                              ),)


                          ),
                        ),
                        )],
                    );
                  }
                  );
            }
          }
      )
    );
  }
}
