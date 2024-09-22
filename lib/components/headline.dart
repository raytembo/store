import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
       Padding(
         padding: EdgeInsets.only(right: 8.0),
         child: Text("Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
       ),
       Icon(Icons.shopping_cart_rounded,size: 30,)
    ],);
  }
}
