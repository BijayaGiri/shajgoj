import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

import 'Checkout.dart';
class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _formkey=GlobalKey<FormState>();
  TextEditingController addressnamecontroller=TextEditingController();
  TextEditingController districtcontroller=TextEditingController();
  TextEditingController areacontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutHeadline(mtitle: "Shipping address"),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Container(
              height: 125,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ithari Medical", style: CheckoutStyle.copyWith(color: Colors.black.withAlpha(200),fontSize: 14,)),
                        Image.asset("assets/images/AddToCart/Cross.png",color: Colors.black,height: 20,)

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Ithari, Koshi Province",style: BottomNavigationstyle.copyWith(fontSize: 15,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Text("Edit",style: BottomNavigationstyle.copyWith(color: Colors.black87),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
          GestureDetector(
            onTap: (){
             showDialog(context: context, builder: (BuildContext context){
               return AddressDialogue(context, formkey: _formkey);
             });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)
            
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("+ Add new address",style: CheckoutStyle.copyWith(color: Colors.black.withAlpha(200),fontSize: 14,),textAlign: TextAlign.center,),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
Widget AddressDialogue(BuildContext context,{required GlobalKey<FormState> formkey}){
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    insetPadding:EdgeInsets.symmetric(horizontal: 10) ,
    contentPadding: EdgeInsets.symmetric(horizontal: 0),
    content: Container(
height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Address",style: BottomNavigationstyle.copyWith(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.black),),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("assets/images/AddToCart/Cross.png",color: Colors.black,height: 20,))
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Form(
             key: formkey,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 5,left: 15),
                   child: Text("Address Name",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.black),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 15),
                   child: TextFormField(
                     validator: (value){
                       if(value?.isEmpty??true){
                         return "Enter Home";
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       hintText: "Home/office",
                       hintStyle: TextStyle(
                           color: Colors.black.withAlpha(100),
                           fontWeight: FontWeight.w500
                       ),
                       fillColor: Colors.grey.shade200,
                       filled: true,
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade400
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       disabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       errorBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 5,left: 15),
                   child: Text("District",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.black),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
                   child: TextFormField(
                     validator: (value){
                       if(value?.isEmpty??true){
                         return "Enter district";
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       hintText: "City",
                       hintStyle: TextStyle(
                           color: Colors.black.withAlpha(100),
                           fontWeight: FontWeight.w500
                       ),
                       fillColor: Colors.grey.shade200,
                       filled: true,
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade400
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       disabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       errorBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 5,left: 15),
                   child: Text("Area",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.black),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
                   child: TextFormField(
                     validator: (value){
                       if(value?.isEmpty??true){
                         return "Enter Tole";
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       hintText: "Tole",
                       hintStyle: TextStyle(
                           color: Colors.black.withAlpha(100),
                           fontWeight: FontWeight.w500
                       ),
                       fillColor: Colors.grey.shade200,
                       filled: true,
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade400
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       disabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       errorBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 5,left: 15),
                   child: Text("Address",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.black),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
                   child: TextFormField(
                     validator: (value){
                       if(value?.isEmpty??true){
                         return "Enter Address";
                       }
                       return null;
                     },
                     decoration: InputDecoration(

                       hintText: "Detailed Address",

                       hintStyle: TextStyle(
                           color: Colors.black.withAlpha(100),
                           fontWeight: FontWeight.w500
                       ),
                       fillColor: Colors.grey.shade200,
                       filled: true,
                       contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade400
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       disabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                       errorBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Colors.grey.shade200
                         ),
                         borderRadius: BorderRadius.circular(15),

                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
          GestureDetector(
            onTap: (){
              if(formkey.currentState!.validate()){

              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ThemeColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Save",style: Whitebackgroundstyle,),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 10),
            child: Card(
              elevation: 2,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("Close",style: Whitebackgroundstyle.copyWith(color: Colors.black),)),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
