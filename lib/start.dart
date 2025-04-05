import 'package:const_application_1/start1.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/ke.jpeg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Start1()));
            }, child: Text("data")))
        ],
      ),
    );
  }
}
