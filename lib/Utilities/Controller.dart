import 'dart:async';
import 'package:get/get.dart';

class BagController extends GetxController{
  RxBool Loginpressed=false.obs;
  RxBool Signuppressed=false.obs;
  RxInt time=30.obs;
  RxBool rememberme=false.obs;
  RxBool checkbox=false.obs;
  RxBool fav=false.obs;
  RxInt count=0.obs;
  Timer? _timer;
  void Loginpress(){
    Loginpressed.value=true;
  }void Logindepress(){
    Loginpressed.value=false;
  }
  void Signuppress(){
    Signuppressed.value=true;
  }
  void Signupdepress(){
    Signuppressed.value=false;
  }

  void mtimer() {
    if (time.value > 0 && _timer == null) {
      _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
        if (time.value > 0) {
          time.value--;
        } else {
          _timer?.cancel();
        }
      });
    }
  }
  void restarttimer() {
    time.value = 30;
    _timer?.cancel(); //cancelling the previous timer
    _timer = null; //resetting the timer
    mtimer(); //
  }

  void setrememberme(){
  rememberme.value=true;
}
  void unsetrememberme(){
    rememberme.value=false;
  }
  void setcheckbox(){
    checkbox.value=true;
  }
  void unsetcheckbox(){
    checkbox.value=false;
  }
  void SetBag(){
    count.value+=1;
  }
  void UnSetBag(){
    count.value>0?count.value-=1:null;
  }
  void SetFav(){
    fav.value=true;
  }
  void UnSetFav(){
    fav.value=false;
  }
}
class DiscriptionController extends GetxController{
  RxBool Description=false.obs;
  RxBool Ingredients=false.obs;
  RxBool SkinCare=false.obs;
  RxBool QandA=false.obs;
  RxBool CustomerReviews=false.obs;
  void SetDescription(){
    Description.value=true;
  }
  void SetIngredients(){
    Ingredients.value=true;
  }
  void SetSkinCare(){
    SkinCare.value=true;
  }
  void SetQandA(){
    QandA.value=true;
  }
  void SetCustomerReviews(){
    CustomerReviews.value=true;
  }
  void UnSetDescription(){
    Description.value=false;
  }
  void UnSetIngredients(){
    Ingredients.value=false;
  }
  void UnSetSkinCare(){
    SkinCare.value=false;
  }
  void UnSetQandA(){
    QandA.value=false;
  }
  void UnSetCustomerReviews(){
    CustomerReviews.value=false;
  }
}