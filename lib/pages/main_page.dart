import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './waste_list.dart';
import 'product_control.dart';
import './pszok_mapa.dart';
import './search.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Ekologic'),
              ),
              ListTile(
                title: Text('PSZOK'),
                subtitle: Text('Sprawdź'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyApp()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Ekologic'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calendar_today),
                text: 'Odpady',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.recycle),
                text: 'Segregacja',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Informacje',
              ),
              
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ WasteList(),  SearchFirestore(), Details()],
        ),
      ),
    );
  }
}
