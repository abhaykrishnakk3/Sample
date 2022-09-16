import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                               Text("Devices",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                               Icon(Icons.device_unknown_sharp,size: 50,)
                            ]),
                          );
  }
}