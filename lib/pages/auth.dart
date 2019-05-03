import 'package:flutter/material.dart';


import './main_page.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekologic'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Witaj Ponownie'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductsAdminPage()),
            );
          },
        ),
      ),
    );
  }
}

