import 'package:const_application_1/controller/Fill.dontroller.dart';
import 'package:const_application_1/view/file.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Api extends StatelessWidget {
  const Api({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       body: Center(
        child: ElevatedButton(onPressed: (){
          context.read<Filldontroller>().getData();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>File()));
        }, child: Text("data")),
      ),
    );
  }
}