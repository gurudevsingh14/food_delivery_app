import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/HomeScreen/components/carousel.dart';
import 'package:food_delivery_app/Screens/HomeScreen/components/customButton.dart';
import 'package:food_delivery_app/Screens/HomeScreen/components/customTile.dart';
import 'components/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1E6FF),
       body: Stack(
         children:[
           Container(
             // margin: EdgeInsets.only(top: size.height*0.18),
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     padding: EdgeInsets.only(top: size.height*0.17),
                     decoration: const BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                     ),
                     child: Column(
                       children: [
                         Container(
                           decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                           ),
                           padding: EdgeInsets.all(20),
                           child: Column(
                               children: [
                                 CustomTile(prefixIcon: Icon(Icons.repeat),text: 'Repeat last order'),
                                 Divider(thickness: 2,),
                                 CustomTile(prefixIcon: Icon(Icons.question_mark),text:'Help me choose'),
                                 Divider(thickness: 2,),
                                 CustomTile(prefixIcon: Icon(Icons.card_giftcard),text: 'Surprise me')
                               ]
                           ),
                         )
                       ],
                     ),

                   ),
                   CustomCarousel(title: 'Top categories',itemCount: 5,option: 1),
                   CustomCarousel(title: 'Recommended for you', itemCount: 5, option: 2)

                 ],
               ),
             ),
           ),
           // ),
           Positioned(top: 0.0,child: CustomAppbar()),
           Positioned(
             bottom: 20,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                   child: RoundButton(text: 'Chect out 2 products', textColor: Colors.white, buttonColor: Colors.black,press:(){})))
    ]
       ),
      ),
    );
  }
}
