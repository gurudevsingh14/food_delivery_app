import 'package:flutter/material.dart';
import 'components/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1E6FF),
       body: SingleChildScrollView(
         child: Column(
           children: [
             CustomAppbar(),
             Container(
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
             ),
             padding: EdgeInsets.all(25),
             child: Column(
                 children: [
                   Row(
                     children: [
                       Icon(Icons.repeat),
                       SizedBox(width: 20,),
                       Text('Repeat last order')
                     ],
                   ),
                   Divider(thickness: 2),
                   Row(
                     children: [
                       Icon(Icons.question_mark),
                       SizedBox(width: 20,),
                       Text('Help me choose')
                     ],
                   ),
                   Divider(thickness: 2),
                   Row(
                     children: [
                       Icon(Icons.card_giftcard),
                       SizedBox(width: 20,),
                       Text('Surprise me')
                     ],
                   ),
                 ]
             ),
             )


             
           ],

         ),
       ),
      ),
    );
  }
}
