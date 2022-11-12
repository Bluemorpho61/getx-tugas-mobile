import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:minggu9_getx/Control/demoController.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:minggu9_getx/View/Home.dart';

import 'package:minggu9_getx/View/demoPage.dart';

void main() async{
await GetStorage.init();
runApp(MyApp());
}


class MyApp extends StatelessWidget {
 final DemoController ctrl =Get.put(DemoController());

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_){
      return GetMaterialApp(
        title: 'GetX',
        theme: ctrl.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/':(context)=>HomePage(),
          '/cart':(context)=>DemoPage(),
        },
      );
    });
  }
}
