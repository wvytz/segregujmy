import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segreguj'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Witaj'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage()),
            );
          },
        ),
      ),
    );
  }
}
