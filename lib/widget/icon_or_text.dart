import 'package:flutter/cupertino.dart';

class IconText extends StatelessWidget {
  final String data;
  IconData icon;
   IconText({required this.data,required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
      
        Icon(icon),
        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
          Text(data,style: TextStyle(fontWeight: FontWeight.bold),),
      ],),
    );
  }
}