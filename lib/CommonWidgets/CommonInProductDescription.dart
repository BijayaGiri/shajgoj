import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

Widget LastContainer(BuildContext context, {required List<String> Items}) {
  DiscriptionController discriptionController =
      Get.put(DiscriptionController());
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: Items.length,
        itemBuilder: (context, index) => Column(
          children: [
            GestureDetector(
              onTap: () {
                if (index == 0) {
                  discriptionController.Description.value
                      ? discriptionController.UnSetDescription()
                      : discriptionController.SetDescription();
                } else if (index == 1) {
                  discriptionController.Ingredients.value
                      ? discriptionController.UnSetIngredients()
                      : discriptionController.SetIngredients();
                } else if (index == 2) {
                  discriptionController.SkinCare.value
                      ? discriptionController.UnSetSkinCare()
                      : discriptionController.SetSkinCare();
                } else if (index == 3) {
                  discriptionController.QandA.value
                      ? discriptionController.UnSetQandA()
                      : discriptionController.SetQandA();
                } else if (index == 4) {
                  discriptionController.CustomerReviews.value
                      ? discriptionController.UnSetCustomerReviews()
                      : discriptionController.SetCustomerReviews();
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.energy_savings_leaf,
                              color: Colors.grey, size: 20),
                        ),
                        Text(
                          Items[index],
                          style: Whitebackgroundstyle.copyWith(
                              color: Colors.black.withAlpha(150)),
                        ),
                        Spacer(),
                        Obx(() {
                          if (index == 0 &&
                              discriptionController.Description.value) {
                            return Icon(Icons.keyboard_arrow_down);
                          } else if (index == 1 &&
                              discriptionController.Ingredients.value) {
                            return Icon(Icons.keyboard_arrow_down);
                          } else if (index == 2 &&
                              discriptionController.SkinCare.value) {
                            return Icon(Icons.keyboard_arrow_down);
                          } else if (index == 3 &&
                              discriptionController.QandA.value) {
                            return Icon(Icons.keyboard_arrow_down);
                          } else if (index == 4 &&
                              discriptionController.CustomerReviews.value) {
                            return Icon(Icons.keyboard_arrow_down);
                          } else {
                            return Icon(Icons.keyboard_arrow_right_outlined);
                          }
                        }),
                      ],
                    ),
                    Obx(() {
                      if (index == 0 &&
                          discriptionController.Description.value) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                      "What it is:Gently removes impurities and excess sebum while fighting acnes and blemishes, leaving skin soft and smooth without the stripping feeling."),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 5),
                                  child: Text("WHY IT'S Special:",style: Discriptionstyle.copyWith(fontSize: 14,color: Colors.black.withAlpha(200),fontWeight: FontWeight.w500),),
                                ),
                              _buildListItem("Unclog pores Foams with creamy texture draw out impurities from pores"),
                                _buildListItem("Natural BHA component Dissolve oil away and provides fresh finish to the skin"),
                                _buildListItem("Smoothing and clearing Prevent formation of blackheads and whiteheads by exfoliation"),
                                _buildListItem("kin beneficial essence Control sebum production and cleanse all the dirt in pores")
                              ],
                            ),
                          ),
                        );
                      } else if (index == 1 &&
                          discriptionController.Ingredients.value) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("antihistamines like cetirizine, loratadine, and diphenhydramine are frequently used for allergies. Active substances like zolpidem and eszopiclone are used to treat sleep problems. Additionally, active components like sertraline and fluoxetine are frequently used to treat depression and anxiety. Knowing a prescription drug’s active components is essential to guaranteeing its efficacy and safety.",style: Discriptionstyle,),

                          ),
                        );
                      } else if (index == 2 &&
                          discriptionController.SkinCare.value) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Instructions",style: Whitebackgroundstyle.copyWith(color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Follow the skin care 5-step Regimen",style: Discriptionstyle,),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Step 1: Cleanse-Cosrx Salicylic Acid Daily Gentle Cleanser\nDispense a moderate amount into your hand. And water and leather. Massage onto face and neck, avoiding eye area. Rinse with warm water",style: Discriptionstyle,),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Step 2: Tone-Toner helps to calmed and balanced skin pH after cleansing",style: Discriptionstyle,),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("step 4: Treat - Serum/Facial Oil/Essence contain useful nutirents-for your skin",style: Discriptionstyle,),
                              )
                            ],
                          ),
                        );
                      } else if (index == 3 &&
                          discriptionController.QandA.value) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              SizedBox(
                                height:300,
                                child:ListView.builder(itemCount:5,itemBuilder: (context,index){
                                  return  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          width:380,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 15,top: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("How is it for dry skin?",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(180)),),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5),
                                                  child: Text("Taniya Sharma - July 01,2024, 18:24",style: Discriptionstyle.copyWith(fontSize: 11),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 15,bottom: 10),
                                                  child: Text("Hello, Thanks for your query. The Cosrx Salicylic Acid. Daily Gentle Cleaner is generally formulated for oily and acne-prone skin types because salicylic acid helps to exfoliate and control excess oil.",style: Discriptionstyle,),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                })
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: ThemeColor,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                    child: Text("Ask a question",style: Whitebackgroundstyle,),
                                  ),
                                ),
                              )

                            ],
                          ),
                        );
                      } else if (index == 4 &&
                          discriptionController.CustomerReviews.value) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            child: Text("This will be added very soon in the next updates",style: BottomNavigationstyle,),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
                  ],
                ),
              ),
            ),
            index == Items.length - 1
                ? Container()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(),
                  ),
          ],
        ),
      ),
    ),
  );
}
Widget _buildListItem(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(maxRadius: 5, backgroundColor: Colors.black.withAlpha(150)),
        SizedBox(width: 8),
        Expanded(child: Text(text,style: Discriptionstyle,)),
      ],
    ),
  );
}
TextStyle Discriptionstyle=BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.w400);
