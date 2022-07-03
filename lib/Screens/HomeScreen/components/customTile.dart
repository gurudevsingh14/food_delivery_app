import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  Icon? prefixIcon;
  String? text;
  CustomTile({Key? key,
  this.prefixIcon,
  this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          prefixIcon!=null?prefixIcon!:SizedBox(),
          SizedBox(width: 20,),
          Text('Repeat last order'),
        ],
      ),
    );
  }
}
