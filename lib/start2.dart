import 'package:const_application_1/Api.dart';
import 'package:const_application_1/view/file.dart';

import 'package:flutter/material.dart';

class Start2 extends StatefulWidget {
  const Start2({super.key});

  @override
  State<Start2> createState() => _Start2State();
}

class _Start2State extends State<Start2> {
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Api()));
            }, child: Text("data")))
        ],
      ),
    );
  }
}