import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/SubScreens/Orderdiscription.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class Orderscreen extends StatefulWidget {
  const Orderscreen({super.key});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 30),
            child: Text("Previous Orders",style: Whitebackgroundstyle.copyWith(
              color: Colors.black.withAlpha(180),
              fontSize: 15,
            ),),
          ),
          Order(context),
        ],
      ),
    );
  }

}
Widget Order(BuildContext context){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.grey.shade300,
              width: 2
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID: 5942853",style: Whitebackgroundstyle.copyWith(
                    color: Colors.black.withAlpha(180),
                    fontSize: 15,
                  ),),
                  Text("Order Date: january 12,2025",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Number of Items: 1",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                  ),
                  Text("Grand Total: NPR.50",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                ],
              ),
              Container(height: 30,width: 80,decoration: BoxDecoration(
                color: ThemeColor,
                borderRadius: BorderRadius.circular(15),
              ),
                child: Center(child: Text("Cancelled",style: Whitebackgroundstyle,)),)
            ],
          ),
        ),
      ),
    ),
  );
}
