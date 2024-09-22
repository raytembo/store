import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/components/cart_item_card.dart';
import 'package:store/components/total_card.dart';

import '../other/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {

    final basket = Provider.of<CartProvider>(context,listen: false);

    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Text("Cart",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,),
        
              SizedBox(
                height: 550,
                child: ListView.builder(
                    itemCount: basket.cart.length ,
                    itemBuilder: (context, index){
                    return Dismissible(
                      key: Key(basket.cart[index].toString()),
                      onDismissed: (direction){
                        if (direction == DismissDirection.startToEnd)
                        {
                          basket.cart.removeAt(index);
                        } else if (direction == DismissDirection.endToStart) {
                          basket.cart.removeAt(index);
                        }
                      },
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            CartItemCard(
                              productName: basket.cart[index]['Product Name'],
                              price: basket.cart[index]['Price'],
                              productUrl: basket.cart[index]['Image location'],
                              quantity: 1,
                            ),
                          )),
                    );
                }),
              ),
              const TotalCard(),
        
            ],
          ),
        ),
      ),
    );
  }
}
