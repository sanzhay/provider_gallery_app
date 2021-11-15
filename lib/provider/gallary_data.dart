import 'package:flutter/material.dart';
import 'package:gallery_rest_api_provider/screens/keys.dart';
import '../services/network_helper.dart';

class GalleryData extends ChangeNotifier {
  List<String> photoes = [];

  Future<void> getImages() async {
    List<String> images = [];

    String url =
        'https://pixabay.com/api/?key=$apiKey&image_type=photo&per_page=20';

    NetworkHelper networkHelper = NetworkHelper(url: url);

    dynamic data = await networkHelper.getData();

    List<dynamic> hitsList = data["hits"];

    for (int i = 0; i < hitsList.length; i++) {
      images.add(hitsList[i]['largeImageURL']);
    }
    photoes = images;
    notifyListeners();
  }
}
