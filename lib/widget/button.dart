import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.36,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 233, 230, 230)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.ad_units)
        ,Text("Play Sound")
      ]),
    );
  }
}