import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  BestSellerCard({super.key, required this.imageUrl, required this.price, required this.productDescription, required this.productName , required this.onTap, required this.info});

  String imageUrl;
  String productName;
  String productDescription;
  int price;
  final onTap;
  final info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 190,
            height: 200,
            color: Colors.white,
            child:  Column(
              children:  [
                Image(image: AssetImage(imageUrl), fit: BoxFit.contain,width: 150,height: 80,),
                Text(productName,style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(productDescription,textAlign:TextAlign.left,maxLines: 4),
                Text(price.toString()),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   GestureDetector(
                     onTap: onTap,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(30),
                       child: Container(
                         width: 100,
                         height: 30,
                         color: Colors.indigo[500],
                         child: const Center(child: Text("Add to Cart",style: TextStyle(
                             color: Colors.white
                         ),),),
                       ),
                     ),
                   ),
                 GestureDetector(
                   onTap: info,
                   child: const Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Icon(Icons.info_outline),
                   ),
                 )
                ],),


              ],
            ),
          ),
        )
      ],
    );
  }
}
