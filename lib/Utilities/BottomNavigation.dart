import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/UI/HomeScreen.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  bool Home=true;
  bool Brands=false;
  bool Categories=false;
  bool Blog=false;
  bool Chat=false;
  bool Hometapped=false;
  bool Brandstapped=false;
  bool Categoriestapped=false;
  bool Blogtapped=false;
  bool Chattapped=false;
  int pageindex=0;
  final pages=[
    HomeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: Container(
        height: 75,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left:20,right: 20 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTapDown:(details){
                  setState(() {
                    Hometapped=true;
                  });

                } ,
                onTapUp:(details){
                  Hometapped=false;
                  setState(() {

                  });
                },
                onTapCancel: (){
                  setState(() {
                    Hometapped=false;
                  });
                },
                onTap:(){
                  Timer(Duration(milliseconds: 100),(){
                    Home=true;
                    Brands=false;
                    Categories=false;
                    Blog=false;
                    Chat=false;
                    setState(() {

                    });
                  });
                } ,
                child: Column(
                  children: [
                    AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Hometapped?Colors.grey.shade100:(Home?Colors.black:null),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.home_outlined,size: 20,color: Hometapped?Colors.black12:(Home?Colors.white:Colors.black54))),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("Home",style: Hometapped?BottomNavigationstyle.copyWith(color: Colors.grey.shade200):BottomNavigationstyle,),
                    )
                  ],
                ),
              ),
               GestureDetector(
                 onTapDown:(details){
                   setState(() {
                     Brandstapped=true;
                   });

                 } ,
                 onTapUp:(details){
                   Brandstapped=false;
                   setState(() {

                   });
                 },
                 onTapCancel: (){
                   setState(() {
                     Brandstapped=false;
                   });
                 },
                 onTap:(){
                   Timer(Duration(milliseconds: 100),(){
                     Home=false;
                     Brands=true;
                     Categories=false;
                     Blog=false;
                     Chat=false;
                     setState(() {

                     });
                   });
                 } ,
                 child: Column(
                   children: [
                     AnimatedContainer(duration: Duration(milliseconds: 500),
                         width: 50,
                         height: 30,
                         decoration: BoxDecoration(
                           color:Brandstapped?Colors.grey.shade100:(Brands?Colors.black:null),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Icon(Icons.diamond_outlined,size: 20,color:Brandstapped?Colors.black12:(Brands?Colors.white:Colors.black54))),
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text("Brands",style: Brandstapped?BottomNavigationstyle.copyWith(color: Colors.grey.shade200):BottomNavigationstyle,),
                     )
                   ],
                 ),
               ),
              GestureDetector(
                onTapDown:(details){
                  setState(() {
                    Categoriestapped=true;
                  });

                } ,
                onTapUp:(details){
                  Categoriestapped=false;
                  setState(() {

                  });
                },
                onTapCancel: (){
                  setState(() {
                    Categoriestapped=false;
                  });
                },
                onTap:(){
                  Timer(Duration(milliseconds:100),(){
                    Home=false;
                    Brands=false;
                    Categories=true;
                    Blog=false;
                    Chat=false;
                    setState(() {

                    });
                  });
                } ,
                child: Column(
                  children: [
                    AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Categoriestapped?Colors.grey.shade100:(Categories?Colors.black:null),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.category_outlined,size: 20,color: Categoriestapped?Colors.black12:(Categories?Colors.white:Colors.black54))),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("Categories",style: Categoriestapped?BottomNavigationstyle.copyWith(color: Colors.grey.shade200):BottomNavigationstyle,),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTapDown:(details){
                  setState(() {
                    Blogtapped=true;
                  });

                } ,
                onTapUp:(details){
                  Blogtapped=false;
                  setState(() {

                  });
                },
                onTapCancel: (){
                  setState(() {
                    Blogtapped=false;
                  });
                },
                onTap:(){
                  Timer(Duration(milliseconds: 100),(){
                    Home=false;
                    Brands=false;
                    Categories=false;
                    Blog=true;
                    Chat=false;
                    setState(() {

                    });
                  });
                } ,
                child: Column(
                  children: [
                    AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Blogtapped?Colors.grey.shade100:(Blog?Colors.black:null),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.menu_book_outlined,size: 20,color: Blogtapped?Colors.black12:(Blog?Colors.white:Colors.black54))),
                    Text("Blog",style: Blogtapped?BottomNavigationstyle.copyWith(color: Colors.grey.shade200):BottomNavigationstyle,)
                  ],
                ),
              ),
              GestureDetector(
                onTapDown:(details){
                  setState(() {
                    Hometapped=true;
                  });

                } ,
                onTapUp:(details){
                  Hometapped=false;
                  setState(() {

                  });
                },
                onTapCancel: (){
                  setState(() {
                    Hometapped=false;
                  });
                },
                behavior:HitTestBehavior.translucent,
                onTap:(){
                  Timer(Duration(milliseconds: 100),(){
                    Home=false;
                    Brands=false;
                    Categories=false;
                    Blog=false;
                    Chat=true;
                    setState(() {

                    });
                  });
                } ,
                child: Column(
                  children: [
                    AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Chattapped?Colors.grey:(Chat?Colors.black:null),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.person_pin_outlined,size: 20,color: Chattapped?Colors.black12:(Chat?Colors.white:Colors.black54))),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text("Chat",style: Chattapped?BottomNavigationstyle.copyWith(color: Colors.grey.shade200):BottomNavigationstyle,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
