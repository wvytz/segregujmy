import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import './pages/main_page.dart';
import './pages/auth.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lime,
          accentColor: Colors.limeAccent),
      home: AuthPage(), 
      // ProductsAdminPage(),
        );
  }
}
