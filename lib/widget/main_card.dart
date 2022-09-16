import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taks/widget/button.dart';
import 'package:taks/widget/icon_or_text.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Joke's Scooter",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconText(data: "8 min", icon: Icons.car_crash_outlined),
                      IconText(data: "8 min", icon: Icons.car_crash_outlined),
                      IconText(data: "8 min", icon: Icons.car_crash_outlined)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ButtonHome(),ButtonHome()],
                  )
                ],
              ),
            );
  }
}