import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/CrousalSlider/Nivea.png",fit: BoxFit.fill,),),
              ),
            ),
            HomeHeadline(Heading: "Big savings on brands you 💓 love",mbottom: 5,mtop: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  spacing: 5,
                  runSpacing: 2,
                  alignment: WrapAlignment.start,
                  children: List.generate(4, (index)=> DealsYouCanotMiss(context)),
                ),
              ),
            ),
            HomeLastContainer(context, mTitle: "View All Brands", mSubtitle: "All the brands you love in one place"),
            HomeHeadline(Heading: "Quick Links"),
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: HomeLastContainer(context, mTitle: "Ithari Medical Outlets ", mSubtitle: "Locate Your nearest Ithari Outlet"),
            ),

          ],
        ),
      ),
    );
  }
}
