import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.black87,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The Kitchen',style: TextStyle(color: Colors.white,fontSize: 30),),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(7),
                ),
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.shopping_cart_rounded),
                  Text('2'),
                ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 350,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20)
            ),

            child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  icon: Icon(Icons.search,size: 30,color: Colors.white60,),
                  hintText: 'Search for something tasty...',
                  hintStyle: TextStyle(color: Colors.white60),
                ),
            ),
          )
        ],
      ),
    );
  }
}
