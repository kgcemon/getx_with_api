import 'package:get/get.dart';
import 'package:getx_with_api/apiconnector/apiconnection.dart';

import '../model/postmodel.dart';

class mystategetx extends GetxController {
  var MyallPost = <Postrmodel>[].obs;

  @override
  void onInit() {
    fatchdta();
    super.onInit();
  }

  Future<void> fatchdta() async {
    var myall = await Get.put(apiconnection().getAllpost());
    MyallPost.addAll(myall);
  }

  DelteData(int index) {
    var myindex = index;
    MyallPost.removeAt(myindex);
  }
}
