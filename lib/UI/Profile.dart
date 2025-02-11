import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/SubScreens/Address.dart';
import 'package:shopifyclone/SubScreens/LoginScreen.dart';
import 'package:shopifyclone/SubScreens/LoyaltyProgram.dart';
import 'package:shopifyclone/SubScreens/MyProfile.dart';
import 'package:shopifyclone/SubScreens/OrderScreen.dart';
import 'package:shopifyclone/SubScreens/PrivacyPolicy.dart';
import 'package:shopifyclone/SubScreens/ReturnRefund.dart';
import 'package:shopifyclone/SubScreens/Shipping.dart';
import 'package:shopifyclone/SubScreens/TermsCondition.dart';
import 'package:shopifyclone/SubScreens/Vouchers.dart';
import 'package:shopifyclone/SubScreens/Wishlist.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> Myaccounttexttitle=['My profile','My Address','Orders','Wishlist','Notifications'];
  List<String> MyaccounttextSubtitle=['View & update your profile','View & update your address','View your recent orders history & details','View products from your Wishlist','View latest offers and news updates from Ithari Medical'];
  List<String> LoyaltyTitle=["Loyalty Program","Vouchers & Offers"];
  List<String> LoyaltySubtitle=["How to add FAQ of Ithari loyalty program","Redeem and manage vouchers"];
  List<String> TermsTitle=["Terms & Condition","Return & Refund Policy","Privacy Policy","Shipping & Delivery","Data Deletion"];

  List<String> TermsSubtitle=["Read Ithari Medical's terms & conditions","Read our return & refund policy","Read our privacy policy","Learn how our shipping & delivery processes works","Delete your Ithari Medical profile & data"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 235,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: ThemeColor
                  ),
                  child: Row(
                    children: [
                     Image.asset("assets/images/PersonIcon.png",height: 100,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text("Hello",style:Whitebackgroundstyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text("886635807896",style: Whitebackgroundstyle.copyWith(fontSize: 18),),
                          ),
                          RoundedBlueContainer(),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10,right: 10,top: 210),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
        color:Color(0xffd7dbdd),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                               decoration: BoxDecoration(
                                   color: Color(0xffbdc3c7),
                                 borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                               ),
                                height: 50,
                                width: double.infinity,
                                child:Padding(
                                  padding:  EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person,color: Colors.black54,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text("My Account",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
                                      )
                                    ],
                                  ),
                                ) ,
                              ),
                            )
                          ],
                        ),
                      
                      SizedBox(
                        height: 290,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:Myaccounttexttitle.length,itemBuilder: (context,index)=>  GestureDetector(
                          onTap: (){
                            if(index==0){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Myprofile()));
                            }
                            if(index==1){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen()));
                            }
                            if(index==2){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderscreen()));
                            }if(index==3){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WishListScreen()));
                            }
                            if(index==0){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Myprofile()));
                            }
                          },
                            child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 15,bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Myaccounttexttitle[index],style: MyaccountTitle,),
                                Text(MyaccounttextSubtitle[index],style: MyaccountSubtitle,),
                               index!=Myaccounttexttitle.length-1?Divider():Container(),
                              ],
                            ),
                                                    ),
                          ),),
                      )
                        
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right: 10,top: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Color(0xffd7dbdd),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffbdc3c7),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                            ),
                            height: 50,
                            width: double.infinity,
                            child:Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.label_important_outline,color: Colors.black54,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Loyalty & Vouchers Program",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
                                  )
                                ],
                              ),
                            ) ,
                          ),
                        )
                      ],
                    ),
        
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:LoyaltyTitle.length,itemBuilder: (context,index)=>  GestureDetector(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoyaltyProgramScreen()));
                          }
                          if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Vouchers()));
                          }

                        },
                          child: Padding(
                          padding: const EdgeInsets.only(top: 5,left: 15,bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(LoyaltyTitle[index],style: MyaccountTitle,),
                              Text(LoyaltySubtitle[index],style: MyaccountSubtitle,),
                              index!=LoyaltyTitle.length-1?Divider():Container(),
                            ],
                          ),
                                                ),
                        ),),
                    )
        
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right: 10,top: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Color(0xffd7dbdd),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffbdc3c7),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                            ),
                            height: 50,
                            width: double.infinity,
                            child:Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.label_important_outline,color: Colors.black54,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Terms & Policy",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
                                  )
                                ],
                              ),
                            ) ,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 290,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:TermsTitle.length,itemBuilder: (context,index)=>  GestureDetector(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsCondition()));
                          }
                          if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReturnRefund()));
                          }
                          if(index==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
                          }
                          if(index==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingDelivery()));
                          }
                        },
                          child: Padding(
                          padding: const EdgeInsets.only(top: 5,left: 15,bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(TermsTitle[index],style: MyaccountTitle,),
                              Text(TermsSubtitle[index],style: MyaccountSubtitle,),
                              index!=TermsTitle.length-1?Divider():Container(),
                            ],
                          ),
                                                ),
                        ),),
                    )

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 115),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Color(0xffd7dbdd),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Logout",style: MyaccountTitle,),
                        Text("Logout from Ithari Medical app",style: MyaccountSubtitle,)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
