import 'package:get/get.dart';
import 'package:minggu9_getx/Model/product.dart';

class Purchase extends GetxController{
var product =<Product>[].obs;

@override
void onInit(){
  fetchProducts();
  super.onInit();
}

void fetchProducts() async{
  await Future.delayed(Duration(seconds: 1));

  var serverResponse =[
    Product(1, "Sample Product", "TestImage", "Produk ini akan ditampilkan dengan menggunakan getX", 400.00),
    Product(1, "Sample Product", "TestImage", "Produk ini akan ditampilkan dengan menggunakan getX", 400.00),
    Product(1, "Sample Product", "TestImage", "Produk ini akan ditampilkan dengan menggunakan getX", 400.00),
    Product(1, "Sample Product", "TestImage", "Produk ini akan ditampilkan dengan menggunakan getX", 400.00),
  ];
  product.value =serverResponse;
}
}