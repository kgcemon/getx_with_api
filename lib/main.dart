import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Pages/Home_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home_Screen(),
    );
  }
}
