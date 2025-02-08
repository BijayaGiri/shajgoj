import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> DealsYouCantMiss=["assets/images/HomeScreen/Tresme.png","assets/images/HomeScreen/Tresme.png"];
  int currentindex = 0;
  List<String> CrousalSlider = [
    "assets/images/CrousalSlider/Nivea.png",
    "assets/images/CrousalSlider/PinkBeauty.png"
  ];
  List<String> DrawerList = [
    "My Account",
    "Loyalty Program",
    "Vouchers & Offers",
    "My WishList",
    "My Orders",
    "Addresses",
    "Notifications"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
          child: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/PersonIcon.png",
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Hello",
                      style: Whitebackgroundstyle.copyWith(
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Guest",
                      style: Whitebackgroundstyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xffc56cc6),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "0.00 Points",
                        style: Whitebackgroundstyle.copyWith(
                            color: Colors.black, fontSize: 12),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListView.builder(
                  itemCount: DrawerList.length,
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Text(
                      DrawerList[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      )),
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CrousalSliderWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Unbeatable 🔥 beauty deals",style: Whitebackgroundstyle.copyWith(color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/images/HomeScreen/WinterBanner.png",fit: BoxFit.fill,))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("💄 DEALS YOU CANNOT MISS",style: Whitebackgroundstyle.copyWith(color: Colors.black)),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 5),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(
                   height: 180,
                   width: 180,
             
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,)),
                 ),
                 SizedBox(
                   height: 180,
                   width:180,
             
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,)),
                 )
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
        
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,)),
                  ),
                  SizedBox(
                    height: 180,
                    width:180,
        
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,)),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
  Widget CrousalSliderWidget(){
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            height: 240.0,
            aspectRatio: 2,
            autoPlay: true,
            //enlargeFactor: 0.3,
            // autoPlayCurve: Curves.fastOutSlowIn,
            //enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentindex = index;
              });
            }),
        items: CrousalSlider.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(i,
                        height: 150,fit: BoxFit.cover,
                      ),
                    )),
              );
            },
          );
        }).toList(),
      ),
      AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 10,
          width: 20,
          child: Center(
            child: SmoothPageIndicator(
              controller: PageController(initialPage: currentindex),
              count: CrousalSlider.length,
              effect: ExpandingDotsEffect(
                dotHeight: 5,
                dotWidth: 5,
                activeDotColor: Colors.blue,
                dotColor: Colors.grey.shade400,
              ),
            ),
          )),
      

    ],);
  }
}

Color appbariconcolor = Colors.black.withAlpha(150);

TextStyle Headline = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
