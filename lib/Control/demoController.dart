import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:minggu9_getx/Model/product.dart';

class DemoController extends GetxController {
  var CartItems = <Product>[].obs;

  int get CartCount => CartItems.length;

  double get TotalAmout =>
      CartItems.fold(0.0, (sum, element) => sum+ element.price);

  addTocart(Product product) {
    CartItems.add(product);
  }

  final storage = GetStorage();

  bool get isDark => storage.read('darkmode') ?? false;

  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();

  void changeTheme(bool val) => storage.write('darkmode', val);
}
