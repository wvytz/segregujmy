import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {/* ... */},
        child: Text('A card that can be tapped'),
      ),
    ));
  }
}
