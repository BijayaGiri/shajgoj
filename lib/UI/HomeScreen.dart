import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BagController _bagController=Get.put(BagController());
  List<String> DealsYouCantMiss = [
    "assets/images/HomeScreen/Tresme.png",
    "assets/images/HomeScreen/Tresme.png"
  ];
  int currentindex = 0;
  List<String> CrousalSlider = [
    "assets/images/CrousalSlider/Nivea.png",
    "assets/images/CrousalSlider/PinkBeauty.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
          child:mDrawer()),
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CrousalSliderWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
              child:   Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  spacing: 2,
                  runSpacing: 5,
                  alignment: WrapAlignment.start,
                  children: List.generate(8, (index) => MIcon(context)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("💄 Categories",
                  style: Whitebackgroundstyle.copyWith(color: Colors.black)),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Container(
               width: MediaQuery.of(context).size.width,
               child: Wrap(
                 spacing: 10,
                 runSpacing: 2,
                 alignment: WrapAlignment.start,
                 children: List.generate(4, (index)=> DealsYouCanotMiss(context)),
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Save more 💵 on top brands",
                style: Whitebackgroundstyle.copyWith(color: Colors.black),
              ),
            ),
           Container(
             width: MediaQuery.of(context).size.width,
             child: Wrap(
               children:
                 List.generate(4, (index)=>SaveMore(context, imageloc: "assets/images/HomeScreen/WinterBanner.png"),),
             ),
           ),
            
            HomeHeadline(Heading: "Featured Products",mtop: 10,mbottom: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                alignment: WrapAlignment.start,
                children: List.generate(4, (index)=>FeaturedProducts(context)),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 10),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeColor,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/PersonIcon.png",height: 100,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Good morning",style: Whitebackgroundstyle,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: RoundedBlueContainer(width: 120),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            HomeHeadline(Heading: "All Inclusive Categories for Every LifeStyle 😎",mtop: 10),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  spacing: 2,
                  runSpacing: 5,
                  alignment: WrapAlignment.start,
                  children: List.generate(12, (index) => MIcon(context)),
                ),
              ),
            ),

            HomeHeadline(Heading: "Quick Links",mtop: 30,mbottom: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                 QuickLinks(title: "Loyalty Program"),
                  QuickLinks(title: "Outlets Location"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  QuickLinks(title: "Authenticity"),
                  QuickLinks(title: "Shipping & Delivery"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  QuickLinks(title: "Join our team"),
                  QuickLinks(title: "Terms & Conditions"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: HomeLastContainer(context, mTitle: "Clearance Sale", mSubtitle: "Last call for clearance. Grab it before it's gone"),
            ),
            HomeLastContainer(context, mTitle: "1000+ Brands", mSubtitle: "All the brands you love in one place"),
            HomeLastContainer(context, mTitle: "Ithari Medical Outlets", mSubtitle: "Locate your nearest Ithari outlet"),

          ],
        ),
      ),
    );
  }

  Widget CrousalSliderWidget() {
    return Column(
      children: [
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
                        child: Image.asset(
                          i,
                          height: 150,
                          fit: BoxFit.cover,
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
      ],
    );
  }
}

Color appbariconcolor = Colors.black.withAlpha(150);

TextStyle Headline = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
