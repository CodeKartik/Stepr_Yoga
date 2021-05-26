import 'package:flutter/material.dart';
// import 'package:fitness_app/pages/yoga.dart';
import 'package:fitness_app/Models/yoga_model.dart';

const MainHeadingStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w300);
const HeadingStyle = TextStyle(fontWeight: FontWeight.w300);

class YogaDetailView extends StatefulWidget {
  final YogaModel yogaModel;

  const YogaDetailView({required this.yogaModel});
  @override
  _YogaDetailViewState createState() =>
      _YogaDetailViewState(yogaModel: yogaModel);
}

class _YogaDetailViewState extends State<YogaDetailView> {
  late final YogaModel yogaModel;
  _YogaDetailViewState({required this.yogaModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/yoga_imeages/${yogaModel.name}.png"),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        yogaModel.name,
                        style: MainHeadingStyle,
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        yogaModel.howTo,
                        style: HeadingStyle,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
