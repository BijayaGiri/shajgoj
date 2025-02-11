import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

class LoyaltyProgramScreen extends StatefulWidget {
  const LoyaltyProgramScreen({super.key});

  @override
  State<LoyaltyProgramScreen> createState() => _LoyaltyProgramScreenState();
}

class _LoyaltyProgramScreenState extends State<LoyaltyProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: Stack(
              children: [
                Container(
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  color: ThemeColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Text(
                          "Loyalty Program",
                          style: Whitebackgroundstyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Your Avaliable Points",
                          style: Whitebackgroundstyle.copyWith(
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          "assets/images/LoyaltyProgram/GoldCoin.png",
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "0.00 Points",
                          style: Whitebackgroundstyle.copyWith(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Waiting for approval",
                            style: Whitebackgroundstyle.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Image.asset(
                              "assets/images/LoyaltyProgram/GoldCoin.png",
                              height: 15,
                            ),
                          ),
                          Text(
                            "2.90 points",
                            style: Whitebackgroundstyle.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 220,
                  right: 2.5,
                  left: 2.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                            child: Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 10),
                                    child: Text("How to Earn Ithari Medical Points?",style: Whitebackgroundstyle.copyWith(fontSize: 14,color: Colors.black),),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10,right: 5),
                                      child:RichText(text: TextSpan(
                                      children: [
                                        TextSpan(text: "More you buy, the more you earn: ",style: BottomNavigationstyle.copyWith(fontSize: 11,color: Colors.black,fontWeight: FontWeight.w800)),
                                        TextSpan(text: "1 point for every NRP.100 purchases",style:BottomNavigationstyle ),
                                      ]
                                      ))
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                            child: Container(
                              height: 115,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 10),
                                    child: Text("How to redeem Ithari Medical Points?",style: Whitebackgroundstyle.copyWith(fontSize: 14,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 10),
                                    child: Text("Purchase e-voucher with your Ithari Medical Points and apply at checkout.Check the available vouchers here",style: Whitebackgroundstyle.copyWith(fontSize: 11,color: Colors.grey),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,top:10),
                                    child: Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: ThemeColor
                                      ),
                                      child:Center(child: Text("PURCHASR E-VOUCHERS",style: Whitebackgroundstyle,))
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
