import 'package:flutter/material.dart';
import 'package:shopifyclone/SubScreens/LoginScreen.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Firstcrousalscreen extends StatefulWidget {
  const Firstcrousalscreen({super.key});

  @override
  State<Firstcrousalscreen> createState() => _FirstcrousalscreenState();
}

class _FirstcrousalscreenState extends State<Firstcrousalscreen>{
  PageController _pageController=PageController();
  int currentindex=0;
  List<String> Firstpart=["assets/images/FirstScreen/first.png","assets/images/FirstScreen/second.png","assets/images/FirstScreen/first.png"];
  List<String> Secondpart=["Explore a wide range of products","Unlock exclusive Offers & Discounts","Safe and Secured Payments"];
  List<String> Thirdpart=["Explore a wide range of products at your fingertips.\nIthari Medical offers an extensive collection\nto suit your needs","Get access to limited-time deals and special\npromotions available only to our valued customers","Ithari Medical employs industry-leading encryption and\ntrusted payment gateways to safeguard your financial\n information"];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: Column(
       children: [
         Align(
           alignment: Alignment.topLeft,
           child: Padding(
             padding: const EdgeInsets.only(left: 30),
             child: SizedBox(
               height: 100,
               child: Image.asset("assets/images/IthariMedical.png"),
             ),
           ),
         ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: PageView.builder(

            controller: _pageController, //this controller helps to synchronize the animated container and the pageview.builder
            onPageChanged: (value) {
              currentindex=index;
              setState(() {

              });
            },
              itemCount:Firstpart.length,itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(Firstpart[index],height: 300,),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15,),
                  child: Text(Secondpart[index],style: Whitebackgroundstyle.copyWith(color: ThemeColor,fontSize: 22,fontWeight: FontWeight.w800),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(Thirdpart[index],textAlign: TextAlign.center,style: BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.w400),),
                ),
              ],
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 50,right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 10,
                  width: 20,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller:_pageController,
                      count: Firstpart.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 5,
                        dotWidth: 5,
                        activeDotColor: Colors.blue,
                        dotColor: Colors.grey.shade400,
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ThemeColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
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
