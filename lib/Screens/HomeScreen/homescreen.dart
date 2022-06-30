import 'package:flutter/material.dart';
import 'components/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

       body: SingleChildScrollView(
         child: Column(
           children: [
             CustomAppbar()
           ],

         ),
       ),
      ),
    );
  }
}
