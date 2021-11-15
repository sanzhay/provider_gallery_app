import 'package:flutter/material.dart';
import 'package:gallery_rest_api_provider/provider/gallary_data.dart';
import 'keys.dart';
import '../services/network_helper.dart';
import 'package:provider/provider.dart';

class PhotoGallery extends StatefulWidget {
  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: context.watch<GalleryData>().photoes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (context, index) {
            return Image.network(
              context.watch<GalleryData>().photoes[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
