
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taks/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: h * 0.25,
            decoration: const BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage(
                        "assets/Apple_Air_Tag-removebg-preview.png"))),
          ),
          const Text('Ping it. Find it.\n AirTag.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 35)),
          const Text(
            'Lose your knack for losing things',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            width: w * 0.6,
            height: h * 0.065,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                    return HomeScreen();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Get started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}