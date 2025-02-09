import 'package:get/get.dart';

class BagController extends GetxController{
  RxBool fav=false.obs;
  RxInt count=0.obs;
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