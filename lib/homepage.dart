import 'package:flutter/material.dart';
import 'dart:async';
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  //variable
  int timeLeft = 60;
  //timer method
  void _startCountdown(){
    Timer.periodic(const Duration(seconds: 1), (timer){
      if (timeLeft >0) {
        setState(() {
          //change values of stuff
          timeLeft--;
        });
      }
      else{
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0? 'Done': timeLeft.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            MaterialButton(
                onPressed: _startCountdown,
                child: const Text('S T A R T',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple
            ),
          ],
        ),
      ),
    );
  }
}