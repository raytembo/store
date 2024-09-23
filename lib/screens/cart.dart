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
                          basket.removefromCart(index);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Removed from cart"))
                          );
                        } else if (direction == DismissDirection.endToStart) {
                          basket.removefromCart(index);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Removed from cart"))
                          );
                        }
                      },
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            CartItemCard(
                              add: (){
                                setState(() {
                                  basket.count++;
                                });
                              },
                              subtract: (){
                                setState(() {
                                  if(basket.count<1){
                                    basket.count=0;
                                  }else{
                                    basket.count-1;
                                  }
                                });
                                basket.subtractquantity();
                              },
                              productName: basket.cart[index]['Product Name'],
                              price: basket.cart[index]['Price'],
                              productUrl: basket.cart[index]['Image location'],
                              quantity: basket.count,
                            ),
                          )),
                    );
                }),
              ),
              TotalCard(
                onTap: (){
                  showBottomSheet(context: context, builder: (context){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 200,
                        width: 400,
                        color: Colors.white,
                        child:  Column(
                          children: [
                            const Text("Total",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text(basket.grandTotal.toString(),style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: GestureDetector(
                                    onTap:(){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text("Payment sucessful")),

                                      );
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      color: Colors.indigo,
                                      child: const Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 50,
                                      color: Colors.red,
                                      child: const Center(child: Text("Cancel",style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                )
                              ],),
                            ),


                          ],
                        ),

                        
                      ),
                    );
                  });
                },
                tax: basket.taxation(basket.taxfree).floor(),
                totalPayment: basket.totalPayment(basket.grandTotal,basket.taxfree).floor(),
                orderAmount: basket.totalPay(basket.cart, basket.total),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
