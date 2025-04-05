import 'package:const_application_1/controller/Fill.dontroller.dart';
import 'package:const_application_1/modal/FIlee.modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class File extends StatelessWidget {
  const File({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: context.watch<Filldontroller>().ofset == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                
                    child: Column(children: [
                for (var i in context.watch<Filldontroller>().ofset!) ...[
                  Text(i.question?? "")
                ],
              ])));
  }
}
