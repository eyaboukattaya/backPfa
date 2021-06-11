import 'package:app_parkinson/drawing/paint-screen.dart';
import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:pedometer/pedometer.dart';
import 'dart:async';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}



class PedometerTest extends StatefulWidget {
 

  
  @override
  _PedometerState createState() => _PedometerState();
}

class _PedometerState extends State<PedometerTest> {
  final CustomTimerController _controller = new CustomTimerController();
  Stream<StepCount> _stepCountStream;
  Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?', _steps = '?';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
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
      _steps = 'Step Count not available';
    });
  }

  Future<void> initPlatformState() async {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.lightBlue[200],
          title: Text("Pedometer Test "),
        ),
       body: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTimer(
              controller: _controller,
              from: Duration(seconds: 0),
              to: Duration(seconds: 50),
              interval: Duration(seconds: 1),
              builder: (CustomTimerRemainingTime remaining) {
                return Text(
                  "${remaining.hours}:${remaining.minutes}:${remaining.seconds}",
                  style: TextStyle(fontSize: 30.0),
                );
              },
            ),









             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                FlatButton(
                  child: Text("Start", style: TextStyle(color: Colors.white)),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  
                  onPressed: () => _controller.start(),
                  color: Colors.green[600],
                  
                  
                ),
                FlatButton(
                    child: Text("Reset", style: TextStyle(color: Colors.white)),
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                    onPressed: () => _controller.reset(),
                    color: Colors.red[600]),
                    FloatingActionButton(
        onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaintScreen()));

        },
        child: new Icon(Icons.navigate_next),
        backgroundColor: Colors.yellow,
      ),
              ],
            ),


            Text(
              'Steps taken:',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              _steps,
              style: TextStyle(fontSize: 60),
            ),
            Divider(
              height: 100,
              thickness: 0,
              color: Colors.white,
            ),
            Text(
              'Status:',
              style: TextStyle(fontSize: 30),
            ),
            Icon(
              _status == 'walking'
                  ? Icons.directions_walk
                  : _status == 'stopped'
                      ? Icons.accessibility_new
                      : Icons.error,
              size: 100,
            ),
            Center(
              child: Text(
                _status,
                style: _status == 'walking' || _status == 'stopped'
                    ? TextStyle(fontSize: 30)
                    : TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            Divider(
              height: 80,
              thickness: 0,
            ),
            

            SizedBox(

              height: 16.0,
            ),
           
          ],
        ),
      ),
    );
  }
}