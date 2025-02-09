import 'package:flutter/material.dart';
import 'package:shopifyclone/CategoriesWidgets/CategoriesWidgets.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkinCare(mtitle: "Skin Care",msubtitle:"Glow with Our\nWide Skin Care Range",mtop: 50 ),
            SkinCare(mtitle: "Hair Care",msubtitle:"Hair Solutions\nfor Every Hair Need",mtop: 50 ),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 10),
              child: Center(child: HomeHeadline(Heading: "Quick Links")),
            ),
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
              child: HomeLastContainer(context, mTitle: "1000+ Brands", mSubtitle: "All the brands you love in one place"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: HomeLastContainer(context, mTitle: "Shajgoj Outlets ", mSubtitle: "Locate Your nearest Shajgoj Outlet"),
            ),
          ],
        ),
      ),
    );
  }
}

