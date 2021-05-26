import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spring/spring.dart';
import 'package:fitness_app/Models/rewardModel.dart';
import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';

//call setter here provider weidget

class Reward extends StatefulWidget {
  final int steps;

  Reward({required this.steps});
  @override
  _RewardState createState() => _RewardState(steps: steps);
}

class _RewardState extends State<Reward> {
  final int steps;
  _RewardState({required this.steps});
  final SpringController springController = SpringController();
  int counter = 0;

  @override
  void initState() {
    super.initState();
    checkReward();
  }

  FrontCard(int steps) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Congratulations !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '🎉',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 10),
                Text(
                  "You have completed $steps steps.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  "Tap on the card to see the reward.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '🔥',
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      Icons.wallet_giftcard_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      '🔥',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )
              ],
            ),
          ),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
      ),
    );
  }

  BackCard(int rewardNumber) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.wallet_giftcard_rounded,
                  size: 40,
                ),
                Image.asset(
                  rewards[rewardNumber].rewardImage,
                  width: 175,
                  height: 100,
                ),
                Text(rewards[rewardNumber].rewardName),
                SizedBox(height: 10),
                GestureDetector(
                  child: Text(
                    rewards[rewardNumber].rewardCode,
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Clipboard.setData(
                        ClipboardData(text: rewards[rewardNumber].rewardCode));
                    CupertinoAlertDialog dialog = CupertinoAlertDialog(
                      title: Text(
                        "Code copied to clipboard",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      actions: [
                        Center(
                          child: MaterialButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Ok"),
                          ),
                        ),
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return dialog;
                      },
                    );
                  },
                ),
                SizedBox(height: 10),
                Text(
                  "Click to copy code.",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFddd6f3), Color(0xFFfaaca8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
      ),
    );
  }

  checkReward() {
    if (steps > 100) {
      return flipperCard(100, Random().nextInt(rewards.length));
    } else if (steps > 80) {
      return flipperCard(80, Random().nextInt(rewards.length));
    } else if (steps > 60) {
      return flipperCard(60, Random().nextInt(rewards.length));
    } else if (steps > 50) {
      return flipperCard(50, Random().nextInt(rewards.length));
    } else if (steps > 15) {
      return flipperCard(15, Random().nextInt(rewards.length));
    } else if (steps > 10) {
      return flipperCard(10, Random().nextInt(rewards.length));
    }
  }

  Center flipperCard(int steps, int rewardNumber) {
    return Center(
      child: Spring.flip(
        springController: springController,
        frontWidget: FrontCard(steps),
        rearWidget: BackCard(rewardNumber),
        flipAxis: Axis.horizontal,
        onTap: (side) {
          springController.play();
        },
        toggleOnClick: false,
        animDuration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new),
      ),
      body: checkReward(),
    );
  }
}
