import 'package:flutter/material.dart';
import '../../app.dart';
import '../../model/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
        appBar: AppBar(
          title: Text('Model'),
        ),
        body: ListView(
          children: locations
              .map((location) => GestureDetector(
                    child: Container(
                      constraints: BoxConstraints.expand(
                        height: 200.0,
                        width: 100.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.greenAccent),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(4)),
                      ),
                      // margin: EdgeInsets.all(1),
                      child: Image.asset(
                        location.imgpath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () => _onLocationTap(context, location.id),
                  ))
              .toList(),
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
}
