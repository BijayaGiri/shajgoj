import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';

import '../Widgets/Home/HomeWidgets.dart';
class TermsCondition extends StatefulWidget {
  const TermsCondition({super.key});

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              
              child:Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("Terms & Conditions",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontSize: 20),),
              )),
          Center(child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Text("By using our services, you agree to comply with all applicable laws and regulations. We reserve the right to update these terms at any time. You are responsible for ensuring that your use of our platform is lawful and does not violate the rights of others. Any misuse, unauthorized access, or fraudulent activity may result in termination of your access. We are not liable for any losses or damages arising from the use of our services. Your continued use of our platform constitutes acceptance of these terms. For any questions, please contact us.",style: BottomNavigationstyle,),
          ))
        ],
      ),
    );
  }
}
