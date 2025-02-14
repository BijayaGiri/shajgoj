import 'package:flutter/material.dart';
import 'package:shopifyclone/SubScreens/LoginScreen.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/UI/OTPLogin.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  ButtonController _buttonController=Get.put(ButtonController());
  final _formkey=GlobalKey<FormState>();
  BagController bottoncontroller = Get.put(BagController());
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController FullNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();

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
                alignment: Alignment.center,
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
                child: Text(
                  "Get Started",
                  style: Whitebackgroundstyle.copyWith(
                      color: ThemeColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Text("by creating a free account"),
             Form(
               key: _formkey,
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                     child: TextFormField(
                       controller: FullNameController,
                       validator: (value){
                         if(value?.isEmpty ?? true){
                           return "Enter Full Name";
                         }
                         return null;
                       } ,

                       decoration: InputDecoration(
                         hintText: "Full Name",
                         suffixIcon: Icon(
                           Icons.person,
                           color: Colors.grey.shade400,
                         ),
                         hintStyle: TextStyle(
                             color: Colors.black.withAlpha(100),
                             fontWeight: FontWeight.w500),
                         fillColor: Colors.grey.shade200,
                         filled: true,
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         disabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         errorBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
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
                     padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                     child: TextFormField(
                       validator: (value){
                         if(value?.isEmpty ?? true){
                           return "Enter email";
                         }
                         return null;
                       } ,
                       controller: EmailController,
                       decoration: InputDecoration(
                         hintText: "Valid email",
                         suffixIcon: Icon(
                           Icons.mail_outline,
                           color: Colors.grey.shade400,
                         ),
                         hintStyle: TextStyle(
                             color: Colors.black.withAlpha(100),
                             fontWeight: FontWeight.w500),
                         fillColor: Colors.grey.shade200,
                         filled: true,
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         focusedErrorBorder:OutlineInputBorder(
                           borderSide: BorderSide(
                               color: Colors.grey.shade200
                           ),
                           borderRadius: BorderRadius.circular(15),

                         ) ,
                         disabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         errorBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                     child: TextFormField(
                       validator: (value){
                         if(value?.isEmpty ?? true){
                           return "Enter Phone number";
                         }
                         return null;
                       } ,
                       controller: phonecontroller,
                       decoration: InputDecoration(
                         hintText: "Phone number",
                         suffixIcon: Icon(
                           Icons.phone_android,
                           color: Colors.grey.shade400,
                         ),
                         hintStyle: TextStyle(
                             color: Colors.black.withAlpha(100),
                             fontWeight: FontWeight.w500),
                         fillColor: Colors.grey.shade200,
                         filled: true,
                         focusedErrorBorder:OutlineInputBorder(
                           borderSide: BorderSide(
                               color: Colors.grey.shade200
                           ),
                           borderRadius: BorderRadius.circular(15),

                         ) ,
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         disabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         errorBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey.shade200),
                           borderRadius: BorderRadius.circular(15),
                         ),
                       ),
                     ),
                   ),
                  Obx((){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextFormField(
obscureText: _buttonController.Signupobscure.value,
                        validator: (value){
                          if(value?.isEmpty ?? true){
                            return " Enter password";
                          }
                          return null;
                        } ,

                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          focusedErrorBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200
                            ),
                            borderRadius: BorderRadius.circular(15),

                          ) ,
                          hintText: "Strong Password",
                          suffixIcon: GestureDetector(
                            onTap: (){
                              _buttonController.toogleObscureSignup();
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w500),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    );
                  }),
                   Padding(
                     padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
                     child: Row(
                       children: [
                         Obx(() {
                           return GestureDetector(
                               onTap: bottoncontroller.checkbox.value?bottoncontroller.unsetcheckbox:bottoncontroller.setcheckbox,
                               child: Icon(bottoncontroller.checkbox.value?Icons.check_box_outlined:Icons.check_box_outline_blank,size: 18,)
                           );
                         }),
                         Padding(
                           padding: const EdgeInsets.only(left: 5),
                           child: Text(
                             "By checking this box you agree to our",
                             style: TextStyle(fontSize: 12),
                           ),
                         ),
                         Text(
                           " Terms",
                           style: TextStyle(color: ThemeColor, fontSize: 12),
                         ),
                         Text(
                           " and ",
                           style: TextStyle(fontSize: 12),
                         ),
                         Text(
                           "Conditions",
                           style: TextStyle(color: ThemeColor, fontSize: 12),
                         )
                       ],
                     ),
                   ),
                 ],
               ),
             ),

              Obx((){
                return bottoncontroller.Signuppressed.value&&bottoncontroller.checkbox.value==false? Align(
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
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){

                        bottoncontroller.Signuppress();
                       if(_formkey.currentState!.validate()&&bottoncontroller.checkbox.value){
                         bottoncontroller.unsetcheckbox();
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>OTPScreen() ));
                       }
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: ThemeColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Register",
                              style: Whitebackgroundstyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already a member? "),
                          GestureDetector(
                              onTap: () {
                                _buttonController.Signupobscure.value=true;
                                bottoncontroller.unsetcheckbox();
                                bottoncontroller.Signupdepress();
                                Navigator.push(

                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Loginscreen()));
                              },
                              child: Text(
                                "Log In",
                                style: Whitebackgroundstyle.copyWith(
                                    color: ThemeColor),
                              ))
                        ],
                      ),
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
