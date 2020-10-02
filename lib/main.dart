import 'package:flutter/material.dart';
import 'package:gallery/PhotoGallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: photo_gallery(),
    );
  }
}
