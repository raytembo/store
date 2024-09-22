import 'package:flutter/cupertino.dart';

class CartProvider with ChangeNotifier{

  List cart =[];

void addtoCart(productName,price, imageUrl){
  Map<String, dynamic> cartItem= {
    "Product Name":productName,
    "Price":price,
    "Image location":imageUrl
  };
  cart.add(cartItem);
  notifyListeners();
}



}