

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/BottomNavigation.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:get/get.dart';
class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> controllers=List.generate(6,(index)=> TextEditingController());
  BagController timecontroller=Get.put(BagController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timecontroller.mtimer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timecontroller.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/IthariMedical.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70,left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Almost there",
                    style: Whitebackgroundstyle.copyWith(
                        color: ThemeColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
             Padding(
               padding: EdgeInsets.only(left: 30,right: 15),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 child: Text.rich(TextSpan(
                   children: [
                     TextSpan(
                       text: "Please enter the 6-digit code sent to your",style: TextStyle(
                       color: Colors.grey
                     )
                     ),
                     TextSpan(
                       text: " number ",style: TextStyle(
                       color: Colors.grey
                     ),
                     ),

                         TextSpan(
                           text:"+977-980-000-0000 ",style: TextStyle(
                           color: ThemeColor
                         ) ,
                         ),
                         TextSpan(
                           text: "for verification",style: TextStyle(
                            color: Colors.grey
                         )

                     ),

                   ]
                 )),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child:Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 5,
                    children:List.generate(
                      6, (index)=> SizedBox(
                      width: 50,
                      child: TextFormField(
                        controller: controllers[index],
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w500),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),)


                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        List<String> data=[];
                        for(int i=0;i<5;i++)
                          data.add(controllers[i].text.toString());
                        var value=data.join("");
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>BottomNavigation() ));
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: ThemeColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Verify",
                            style: Whitebackgroundstyle.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn't receive any code? Resend Again",style: BottomNavigationstyle.copyWith(
                            color: Colors.black,
                            fontSize: 13
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Request new code in ",
                              style: BottomNavigationstyle.copyWith(
                              fontSize: 13,color: Colors.grey,
                          ),
                              ),
                              Obx((){
                                return GestureDetector(
                                    onTap: (){

                                     if(timecontroller.time.value==0){
                                       timecontroller.restarttimer();
                                     }
                                    },

                                    child: Text(timecontroller.time.value==0?"Resend":"00:"+timecontroller.time.value.toString()+"s",style: TextStyle(fontSize:13,color: ThemeColor ),));
                              })
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
