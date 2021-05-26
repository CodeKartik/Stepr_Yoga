import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:fitness_app/Models/yoga_model.dart';
import 'package:fitness_app/Models/yoga_detailView.dart';

class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // print(YogaMap.values.elementAt(1));
  //   // print(YogaMap.length);
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Cat Cow Pose",
      "Plank Pose",
      "Side Plank",
      "Downward-Facing Dog",
      "Three-Legged Dog",
      "Low Plank",
      "Upward-Facing Dog",
      "Child's Pose",
      "Forward Fold",
      "Low Lunge",
      "High Lunge",
      "Wide-Legged Forward Fold",
      "Wide-Legged Forward Fold With Twist",
      "Garland Pose",
      "Happy Baby",
    ];

    final List<Widget> images = [
      CardWeidget(
        imeageName: 'Cat Cow Pose',
      ),
      CardWeidget(
        imeageName: 'Plank Pose',
      ),
      CardWeidget(
        imeageName: 'Side Plank',
      ),
      CardWeidget(
        imeageName: 'Downward-Facing Dog',
      ),
      CardWeidget(
        imeageName: 'Three-Legged Dog',
      ),
      CardWeidget(
        imeageName: 'Low Plank',
      ),
      CardWeidget(
        imeageName: 'Upward-Facing Dog',
      ),
      CardWeidget(
        imeageName: "Child's Pose",
      ),
      CardWeidget(
        imeageName: 'Forward Fold',
      ),
      CardWeidget(
        imeageName: 'Low Lunge',
      ),
      CardWeidget(
        imeageName: 'High Lunge',
      ),
      CardWeidget(
        imeageName: 'Wide-Legged Forward Fold',
      ),
      CardWeidget(
        imeageName: 'Wide-Legged Forward Fold With Twist',
      ),
      CardWeidget(
        imeageName: 'Garland Pose',
      ),
      CardWeidget(
        imeageName: 'Happy Baby',
      ),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          // gradient: LinearGradient(
          //     colors: [Color(0xFFddd6f3), Color(0xFFfaaca8)],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter),
          // gradient: LinearGradient(
          //     colors: [Color(0xFF43cea2), Color(0xFF185a9d)],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'YOGA EXERCISES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Expanded(
                child: Container(
                  child: VerticalCardPager(
                      titles: titles, // required
                      images: images, // required
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500), // optional
                      onPageChanged: (page) {
                        // optional
                      },
                      onSelectedItem: (index) {
                        print('This is the selected index :$index');

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YogaDetailView(
                                yogaModel: YogaMap[titles[index]]),
                          ),
                        );
                      },
                      initialPage: 0, // optional
                      align: ALIGN.CENTER // optional
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWeidget extends StatelessWidget {
  final imeageName;
  // final text;

  CardWeidget({required this.imeageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaY: 1.3, sigmaX: 1.3),
          child: Image.asset(
            'asset/yoga_imeages/$imeageName.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
