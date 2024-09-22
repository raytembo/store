import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/components/best_seller_card.dart';
import 'package:store/components/headline.dart';
import 'package:store/components/promo_card.dart';
import 'package:store/components/search_bar.dart';
import 'package:store/other/cart_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List productNames = [
      "Samsung Galaxy S24",
      "Iphone 16",
      "Rabbit R1",
      "Smartwatch Ultra"
    ];

    List productDescription = [
      "This is An S24",
      "This is an IOS 18",
      "This Has Ai",
      "More than a Wrist watch"
    ];
    List imageUrls = [
      "assets/galaxy s24.jpeg",
      "assets/iphone 16.jpg",
      "assets/rabbit r1.jpg",
      "assets/smartwatch.jpg"
    ];
    List prices = [
      2000000,
      1800000,
      300000,
      250000
    ];


    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    const MainHeading(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey[50],
                        child:const Icon(Icons.notification_important,size: 30,),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MainSearchBar(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey[50],
                        child:const Icon(Icons.search, size: 30,) ,
                      ),
                    ),
                ],
                ),
              ),
              const PromoCard(),
              Container(
                color: Colors.transparent,
                width: 500,
                height: 500,
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
                  itemCount: 4,
                ),
              ),
            ],
          
          ),
        ),
      ),
    );
  }
}
