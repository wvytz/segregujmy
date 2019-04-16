import 'package:flutter/material.dart';

import './products.dart';
import './product_create.dart';
import './product_list.dart';
import './news_feed.dart';

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
                title: Text('Segreguj'),
              ),
              ListTile(
                title: Text('Ekran Główny'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductsPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Segregujmy'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calendar_today),
                text: 'Terminy',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'Informacje',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Wiadomości',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ProductCreatePage(), ProductListPage(), NewsFeed()],
        ),
      ),
    );
  }
}
