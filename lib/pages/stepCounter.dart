import 'package:fitness_app/pages/rewards.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import 'package:flutter/cupertino.dart';

//#46dda4
//#003765

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class StepCounter extends StatefulWidget {
  @override
  _StepCounterState createState() => _StepCounterState();
}

class _StepCounterState extends State<StepCounter> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?';
  int _steps = 0;

  // late StepCount stepCount;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    checkReward();
  }

  void onStepCount(StepCount event) {
    print('This is the event :$event');
    setState(() {
      // _steps = event.steps.toString();
      _steps = event.steps;
    });
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      // _steps = 'Step Count not available';
      _steps = 0;
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  showRewardDialoug(int steps) {
    CupertinoAlertDialog(
      title: Text(
        "Congrats you have unlocked a reward.",
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      actions: [
        Center(
          child: MaterialButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Reward(steps: _steps)),
            ),
            child: Text("Show"),
          ),
        ),
      ],
    );
    return showDialog(
        context: context,
        builder: (context) {
          return showRewardDialoug(_steps);
        });
  }

  checkReward() {
    if (_steps == 100) {
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    } else if (_steps == 91) {
      print('into checking');
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    } else if (_steps == 60) {
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    } else if (_steps == 50) {
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    } else if (_steps == 15) {
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    } else if (_steps == 10) {
      showDialog(
          context: context,
          builder: (context) {
            return showRewardDialoug(_steps);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF46dda4), Color(0xFF003765)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Steps taken :',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  "$_steps",
                  style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Status:',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Icon(
                            _status == 'walking'
                                ? Icons.directions_walk
                                : _status == 'stopped'
                                    ? Icons.accessibility_new
                                    : Icons.error_outline,
                            size: 45,
                            color: Colors.white),
                        SizedBox(height: 20),
                        Text(
                          _status,
                          style: _status == 'walking' || _status == 'stopped'
                              ? TextStyle(fontSize: 30, color: Colors.white)
                              : TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                _steps > 10
                    ? MaterialButton(
                        onPressed: () {
                          print(_steps);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Reward(steps: _steps)),
                          );
                        },
                        child: Text(
                          'Check Rewards',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
