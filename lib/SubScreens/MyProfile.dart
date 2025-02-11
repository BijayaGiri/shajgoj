import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              "Personal Information",
              style: Whitebackgroundstyle.copyWith(
                  fontSize: 18, color: Colors.black.withAlpha(180)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: " Enter first name",
                hintStyle:MyprofilTextstyle,
                fillColor: Colors.grey.shade200,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter last name",
                hintStyle:MyprofilTextstyle,
                fillColor: Colors.grey.shade200,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "+9770000000000",
                hintStyle: TextStyle(
                    color: Colors.black.withAlpha(100),
                    fontWeight: FontWeight.w500),
                fillColor: Colors.grey.shade200,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(100), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Gender",
                      hintStyle: MyprofilTextstyle,
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Year of birth",
                      hintStyle: MyprofilTextstyle,
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(100), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ThemeColor,
              ),
              child: Center(
                child: Text("Save Changes",style: Whitebackgroundstyle,),
              ),
            ),
          )
        ],
      ),
    );
  }
  TextStyle MyprofilTextstyle=TextStyle(
      color: Colors.black.withAlpha(150),
      fontWeight: FontWeight.w500);
}
