import 'package:flutter/material.dart';
import 'package:quiz/model/location.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../model/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  LocationDetail(this._locationID);
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imgpath),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
