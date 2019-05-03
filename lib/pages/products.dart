import 'package:flutter/material.dart';

import 'pszok_mapa.dart';
import './main_page.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProductsAdminPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Pszok Leszno'),
      ),
      body: MyApp(),
    );
  }
}
