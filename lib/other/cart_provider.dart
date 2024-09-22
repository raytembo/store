import 'package:flutter/cupertino.dart';

class CartProvider with ChangeNotifier{

  List cart =[];
  int total = 0;
  int taxfree= 0;
  double grandTotal= 0;

void addtoCart(productName,price, imageUrl){
  Map<String, dynamic> cartItem= {
    "Product Name":productName,
    "Price":price,
    "Image location":imageUrl
  };
  cart.add(cartItem);
  notifyListeners();
}

int totalPay(cart,total){

  if (cart.isEmpty){
       total = 0;
  }
  else
  {
    int sum = cart.map((map) => map['Price'] as int)  // Extract the 'value' field from each map
        .reduce((a, b) => a + b);           // Sum the extracted values
      total = sum;
  }
  notifyListeners();
  return total;
}
  void removefromCart(index){
    cart.removeAt(index);
    totalPay(cart, total);
    notifyListeners();
  }
double taxation(taxfee){
  taxfee = totalPay(cart, total) * 30/100;
  notifyListeners();
  return taxfee;
}

double totalPayment(grandTotal, taxfee){
  grandTotal = taxation(taxfee) + totalPay(cart, total);
  notifyListeners();
  return grandTotal;
}





}