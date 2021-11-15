import 'package:flutter/material.dart';
import 'package:gallery_rest_api_provider/provider/gallary_data.dart';
import 'package:gallery_rest_api_provider/screens/photo_gallery_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => GalleryData()..getImages(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PhotoGallery(),
      ),
    );
  }
}
