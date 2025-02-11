import 'dart:async';
import 'package:get/get.dart';

class BagController extends GetxController{
  RxInt time=30.obs;
  RxBool rememberme=false.obs;
  RxBool checkbox=false.obs;
  RxBool fav=false.obs;
  RxInt count=0.obs;
  Timer? _timer;
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