import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
   CartItemCard({super.key,required this.price, required this.productName, required this.productUrl, required this.quantity, required this.add, required this.subtract});

   String productName;
   String productUrl;
   int price;
   int quantity;
   final add;
   final subtract;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 390,
        height: 150,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
               borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage(productUrl), width: 100,height: 100,fit: BoxFit.contain,)),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Text(productName),
            Text(price.toString())
            ],),
            const SizedBox(width: 10,),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(height: 130,),
                    GestureDetector(
                      onTap: add,
                        child: const Icon(Icons.add_circle,size: 30,)),
                    const SizedBox(width: 10,),
                    Text(quantity.toString(), style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: subtract,
                        child: const Icon(Icons.remove_circle,size: 30,))
                  ],
                ),
              

              ],
            )

          ],
        ),
      ),
    );
  }
}
