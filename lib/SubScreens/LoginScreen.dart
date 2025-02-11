import 'package:flutter/material.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/UI/Signup.dart';
import 'package:shopifyclone/Utilities/BottomNavigation.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:get/get.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bottoncontroller.dispose();
  }
  final _formkey=GlobalKey<FormState>();
  BagController bottoncontroller=Get.put(BagController());
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/IthariMedical.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text("Welcome back",style: Whitebackgroundstyle.copyWith(color: ThemeColor,fontSize: 35,fontWeight: FontWeight.w800),),
              ),
              Text("signin to access your account"),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      child: TextFormField(
                        validator: (value){
                          if(value?.isEmpty ?? true){
                            return "Enter Phone number";
                          }
                          return null;
                        },
                        controller: phonecontroller,
                        decoration: InputDecoration(
                          hintText: "Enter your phone number",
                          suffixIcon: Icon(Icons.call,color: Colors.grey.shade400,),
                          hintStyle: TextStyle(
                              color: Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w500
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusedErrorBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ) ,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      child: TextFormField(
                        validator: (value){
                          if(value?.isEmpty ?? true){
                            return "Enter password";
                          }
                          return null;
                        },
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: Icon(Icons.lock,color: Colors.grey.shade400,),
                          hintStyle: TextStyle(
                              color: Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w500
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedErrorBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ) ,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 15,right: 30),
            child: Row(
              children: [
                Obx(() {
                  return GestureDetector(
                      onTap: bottoncontroller.rememberme.value?bottoncontroller.unsetrememberme:bottoncontroller.setrememberme,
                      child: Icon(bottoncontroller.rememberme.value?Icons.check_box_outlined:Icons.check_box_outline_blank,size: 18,)
                  );
                }),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Remember me"),
          ),
          Spacer(),
          Text("Forgot password ?",style: TextStyle(color: ThemeColor),)
              ],
            ),
          ),
              Obx((){
                return bottoncontroller.Loginpressed.value&&bottoncontroller.rememberme.value==false? Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35,top: 2),
                    child: Text("! Hit the Check Box",style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,),
                  ),
                ):Padding(
                  padding: const EdgeInsets.only(left: 35,top: 2),
                  child: Text("",style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                    textAlign: TextAlign.start,),
                );
              }),
              GestureDetector(
                onTap: (){
                  bottoncontroller.Loginpress();
                  if(_formkey.currentState!.validate()&&bottoncontroller.rememberme.value){
                    bottoncontroller.unsetcheckbox();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));

                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 80),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: ThemeColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login",style: Whitebackgroundstyle.copyWith(fontWeight: FontWeight.w500,fontSize: 16),),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20,bottom: 20,left: 30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("New Member?"),
                            GestureDetector(
                                onTap: (){
                                  bottoncontroller.unsetrememberme();
                                  bottoncontroller.Logindepress();
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                                },
                                child: Text("Register now",style: Whitebackgroundstyle.copyWith(color: ThemeColor),))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
