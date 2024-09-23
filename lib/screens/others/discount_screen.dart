import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/best_seller_card.dart';
import '../../other/cart_provider.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List productNames = [

      "Rabbit R1",
      "Smartwatch Ultra",
      "Hard Drive",
      "JBL Flip 6",
      "Stadia",
      "Wireless Charger"
    ];

    List productDescription = [

      "This Has Ai",
      "More than a Wrist watch",
      "Expand your storage",
      "Rich Sounds",
      "Better Gaming Experience",
      "Fast Charging"

    ];
    List imageUrls = [

      "assets/rabbit r1.jpg",
      "assets/smartwatch.jpg",
      "assets/hdd.jpg",
      "assets/JBL-flip-6.jpg",
      "assets/stadia.jpg",
      "assets/wireless charger.jpg"
    ];
    List prices = [
      (300000-20000).floor(),
      (250000-20000).floor(),
      (50000-20000).floor(),
      (150000-20000).floor(),
      (200000-20000).floor(),
      (90000-20000).floor(),
    ];


    return Scaffold(
      appBar: AppBar(title: const Text("Discounts"),backgroundColor: Colors.indigo[50],),
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
         SizedBox(
           height: 800,
           child: GridView.builder(
                 gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
                 ),
                 itemBuilder: (BuildContext context, int index) {
            return BestSellerCard(
              price: prices[index],
              productDescription: productDescription[index],
              productName: productNames[index],
              imageUrl: imageUrls[index],
              onTap: (){
                final basket = Provider.of<CartProvider>(context,listen: false);
                basket.addtoCart(productNames[index], prices[index], imageUrls[index]);
                print(basket.cart);
              },
              info: (){
        
              },
            );
                 },
                 itemCount: productNames.length,
        
                 ),
         ),],
        ),
      ),
    );
  }
}
