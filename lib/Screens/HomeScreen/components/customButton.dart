import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;
  final String text;
  final  press;
  const RoundButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width*0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FlatButton(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
            onPressed:press,
            color: buttonColor,
            child: Text(
              text,style: TextStyle(fontSize: 16,color: textColor),
            )),
      ),
    );
  }
}