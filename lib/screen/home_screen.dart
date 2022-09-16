import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taks/widget/button.dart';
import 'package:taks/widget/home_card.dart';
import 'package:taks/widget/icon_or_text.dart';
import 'package:taks/widget/main_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 233, 230, 230),
          title: Text(
            "Browse",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.width * 0.72,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (ctx, index) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: HomeCard());
                        }),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Text(
                    "Devices",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "8",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
             MainCard(),
             SizedBox(height: MediaQuery.of(context).size.height*0.02,),
             MainCard()
            ],
          ),
        ),
      )),
    );
  }
}
