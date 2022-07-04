import 'package:flutter/material.dart';
import 'package:food_delivery_app/DummyData/data.dart';

Size? size;
class CustomCarousel extends StatelessWidget {
  String? title;
  int? itemCount;
  int? option;
  CustomCarousel({Key? key,
  required this.title,
  required this.itemCount,
    required this.option,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Row(
              children: [
                Text('View all ',style: TextStyle(color: Colors.grey[700]),),
                Icon(Icons.arrow_forward,size: 16,color: Colors.grey[700],
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 15,),
        SizedBox(
          height: option!=null?option==1?50:null:null,
          child: option!=null?option==1?ListView.builder(
              scrollDirection: option!=null?option==1?Axis.horizontal:Axis.horizontal:Axis.vertical,
              itemCount: itemCount,
              itemBuilder: (BuildContext context,int index){
                return categoryButton(listOfCategory[index].icon!,listOfCategory[index].name!);
              },
              ):
              Wrap(
                children: listOfFood.map((food){
                  return foodCard(food.image!, food.title!, food.price!);
                }).toList(),
              ):null
        ),
        ],
      ),
    );
  }
}


Widget categoryButton(Icon icon,String text)
{
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Container(padding: EdgeInsets.all(10),
    child: Row(
      children: [
        icon,
        SizedBox(width: 5,),
        Text(text)
      ],
    ),),
  );
}

Widget foodCard(Image image,String title,double price){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(padding: EdgeInsets.all(15),
    width: size!.width*0.43,
    child: Column(
      children: [
        image,
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
          // height: ,
            width: 90,
            child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),maxLines: 2,overflow: TextOverflow.ellipsis,)),
        Text("\$"+price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
        ],
        ),
      ],
    ),
  )
  );
}
