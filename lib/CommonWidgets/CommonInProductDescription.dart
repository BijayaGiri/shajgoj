import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';

Widget LastContainer(BuildContext context,{required List<String> Items}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child: Container(
      height: 320,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.grey.shade300
          )
      ),
      child: Expanded(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount:Items.length,itemBuilder: (context,index)=>Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.energy_savings_leaf,color: Colors.grey,size: 20,),
                  ),
                  Text(Items[index],style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150)),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
        
                ],
              ),
            ),
            index==Items.length-1?Container():Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
          ],
        ),),
      )
    ),
  );
}