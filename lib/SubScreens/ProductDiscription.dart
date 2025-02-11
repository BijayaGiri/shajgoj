import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/CommonInProductDescription.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:get/get.dart';

class ProductDiscription extends StatefulWidget {
  const ProductDiscription({super.key});

  @override
  State<ProductDiscription> createState() => _ProductDiscriptionState();
}

class _ProductDiscriptionState extends State<ProductDiscription> {
  BagController _bagController=Get.put(BagController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade200))
        ),
        height: 80,
        width: MediaQuery.of(context).size.height,
        child:Padding(
          padding: const EdgeInsets.only(left: 15,right:15,top: 10),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("NPR.50",style: BottomNavigationstyle.copyWith(fontSize: 13,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w900),),
                  Text("Your are saving Rs.10",style: BottomNavigationstyle.copyWith(fontSize: 13,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w900),),
                ],
              ),
GestureDetector(
  onTap: (){
_bagController.SetBag();
  },
  child: Container(
    height: 50,
    width: 120,
    decoration: BoxDecoration(
      color: ThemeColor,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Center(child: Text("Add to cart",style: Whitebackgroundstyle,)),
  ),
)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tresme Soft Light Moisturising Cream 50.0ml",style: BottomNavigationstyle.copyWith(fontSize: 15,fontWeight: FontWeight.w800),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text("50ml",style: BottomNavigationstyle.copyWith(fontWeight: FontWeight.w500),),
                        Spacer(),
                       Icon(Icons.star,color: Colors.yellow,size: 20,),
                        Icon(Icons.star,color: Colors.yellow,size: 20),
                        Icon(Icons.star,color: Colors.yellow,size: 20),
                        Icon(Icons.star,color: Colors.grey,size: 20),
                        Icon(Icons.star,color: Colors.grey,size: 20),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 30),
                    child: Row(
                      children: [
                        Spacer(),
                     Obx((){
                       return    GestureDetector(
                         onTap: (){
                           _bagController.fav.value?_bagController.UnSetFav():_bagController.SetFav();
                           print(  _bagController.fav.value);
                         },
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: _bagController.fav.value?Image.asset("assets/images/ProductDiscription/Fav.png",height: 35,):Image.asset("assets/images/ProductDiscription/Unfav.png",height: 35,),
                         ),
                       );
                     }),
                        Image.asset("assets/images/ProductDiscription/Share.png",height: 35,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 10,top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text("●",style: TextStyle(color: Colors.black),),
                      ),
                      Flexible(child: Text("Treat your skin to the care of Tresme Soft Moisturing Cream",style: BottomNavigationstyle.copyWith(fontSize: 13),))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text("●",style: TextStyle(color: Colors.black),),
                      ),
                      Flexible(child: Text("With a quick absorbing formula, it keeps you feeling fresh at the snap of a finger, so you can get ready in seconds",style: BottomNavigationstyle.copyWith(fontSize: 13),))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text("●",style: TextStyle(color: Colors.black),),
                      ),
                      Flexible(child: Text("Enjoy fresh skin with the goodness of Vitamin E and Jojoba Oil only with NIVEA Soft",style: BottomNavigationstyle.copyWith(fontSize: 13),))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ratings & Reviews",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontSize: 13),),
                                Text("291 Ratings",style:Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal) ,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Text("3.9",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal),),
                                      ),
                                      Text("Out of 5",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontSize: 13,fontWeight: FontWeight.w400),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset("assets/images/ProductDiscription/Cup.png",height: 80,),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Container(
                    child:Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.info_rounded,color: Colors.grey,),
                            ),
                            Text("Product Informations",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150)),),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            SizedBox(
                                width: 150,
                                child: Text("Product Name",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.normal),)),
                            Expanded(child: Text("Tresme Soft Light Moisturising Cream 50.0 ml",style:Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(180),fontSize: 13),textAlign: TextAlign.start,))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              SizedBox(
                                  width: 150,
                                  child: Text("Brand Name",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.normal),)),
                              Text("Tresme",style:Whitebackgroundstyle.copyWith(color: ThemeColor,fontSize: 13),textAlign: TextAlign.start,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              SizedBox(
                                  width:150,
                                  child: Text("Size",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontWeight: FontWeight.normal),)),

                              Text("50 ml",style:Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 13),textAlign: TextAlign.start,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                LastContainer(context,Items: ["Description","Ingredients","Skin Care Routine","Q&A","Customer Reviews"]),
                HomeHeadline(Heading: "You might also like",mcolor: Colors.black.withAlpha(180)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            4, (index)=>Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: FeaturedProducts(context),
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child:Row(
                    children: [
                      Expanded(
                          child: Text("We are the experts when it comes to your beauty needs.We provide true reviews and authentic products, no replica, no duplicates! You are not only, special to yourself, you're also special to us",style: BottomNavigationstyle.copyWith(fontSize:13),)),
                    ],
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
