import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class Vouchers extends StatefulWidget {
  const Vouchers({super.key});

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: ThemeColor,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vouchers & Offers",style:Whitebackgroundstyle.copyWith(fontSize: 15) ,),
                    Container(
                      height: 35,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Add New Voucher",style: BottomNavigationstyle.copyWith(color: Colors.black,fontSize: 13),)),
                    )
                  ],
                ),
              ),
            ),

            Coupons(context, mtop: 30),
            Coupons(context, mtop: 5),
            Coupons(context, mtop: 5),
            Coupons(context, mtop: 5),
            Coupons(context, mtop: 5),

          ],
        ),
      ),
    );
  }
}
Widget Coupons(BuildContext context,{required double mtop}){
  return  Padding(
    padding:  EdgeInsets.only(left: 10,right: 10,top: mtop),
    child: Card(
      elevation: 2,
      child: Container(
        height: 225,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Vouchers/Vouchers.png",height:50),
                  Column(
                    children: [
                      Text("NRP.50",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(180)),),
                      Text("IthariMed40",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.w500),),

                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,right: 10,top: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.info_outline,color: Colors.grey,),
                  ),
                  Text("Flat NRP.20 discount for brand Samsung",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.w500),),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,right: 10,top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.info_outline,color: Colors.grey,),
                  ),
                  Text("Min. spend NRP.500",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
              child: DottedDashedLine(height: 0, width: MediaQuery.of(context).size.width,axis: Axis.horizontal,dashSpace: 5,dashColor: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Expires on 8 March 2025",style: BottomNavigationstyle.copyWith(fontWeight: FontWeight.w800,color: Colors.black.withAlpha(180),fontSize: 14),),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Use Now",style: Whitebackgroundstyle,)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
