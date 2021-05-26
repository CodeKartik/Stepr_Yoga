import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:fitness_app/Models/diet_detailView.dart';
import 'package:fitness_app/Models/diet_model.dart';

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  // final List items = ["one"];
  final List imeageNames = [
    "The paleo diet",
    "Low-fat diets",
    "The Mediterranean diet",
    "Intermittent fasting",
    "Plant-based diets",
    "Low-carb diets",
    "WW (Weight Watchers)",
    "The DASH diet"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFddd6f3),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFddd6f3), Color(0xFFfaaca8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          height: 300,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return CardWeidget(
                imageName: imeageNames[index],
              );
            },
            onTap: (index) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DietDetailView(
                          dietModel: DietMap[imeageNames[index]])));
            },
            viewportFraction: 0.8,
            scale: 0.9,
            itemCount: imeageNames.length,
            // pagination: new SwiperPagination(),
            // control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}

class CardWeidget extends StatelessWidget {
  final imageName;

  CardWeidget({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "asset/diet_images/$imageName.png",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          child: Text(
            imageName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
