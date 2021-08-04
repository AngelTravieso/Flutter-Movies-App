import 'package:flutter/material.dart';
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movies in Cinemas'),
          elevation: 0, // without shadow
          actions: [
            IconButton(icon: Icon(Icons.search_outlined), onPressed: () {})
          ],
        ),
        // SingleChildScrollView allows scrolling
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Principal Cards
              CardSwiper(),
              // Movies Slider
              MovieSlider(),
            ],
          ),
        ));
  }
}
