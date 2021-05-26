import 'package:flutter/material.dart';
import 'package:fitness_app/Models/diet_model.dart';

const MainHeadingStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w300);
const HeadingStyle = TextStyle(fontWeight: FontWeight.w300);

class DietDetailView extends StatefulWidget {
  final DietModel dietModel;
  DietDetailView({required this.dietModel});
  @override
  _DietDetailViewState createState() =>
      _DietDetailViewState(dietModel: dietModel);
}

class _DietDetailViewState extends State<DietDetailView> {
  final DietModel dietModel;
  _DietDetailViewState({required this.dietModel});
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
              Image.asset("asset/diet_images/${dietModel.name}.png"),
              SizedBox(height: 20.0),
              Text(
                dietModel.name,
                style: MainHeadingStyle,
              ),
              SizedBox(height: 20.0),
              Text(dietModel.descrition, style: HeadingStyle),
              SizedBox(height: 20.0),
              Text(dietModel.How_it_works, style: HeadingStyle),
              SizedBox(height: 20.0),
              Text(dietModel.weight_loss, style: HeadingStyle),
              SizedBox(height: 20.0),
              Text(dietModel.other_benifits, style: HeadingStyle),
              SizedBox(height: 20.0),
              Text(dietModel.Downsides, style: HeadingStyle),
            ],
          )
        ],
      ),
    );
  }
}
