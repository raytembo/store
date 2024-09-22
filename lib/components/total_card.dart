import 'package:flutter/material.dart';

class TotalCard extends StatelessWidget {
  const TotalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 390,
          height: 160,
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Order Amount",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("3000")
                  ],),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Tax",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("300")
                  ],),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Total Payment",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("3300")
                  ],),
                ),
                const SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 300,
                    height:50,
                    color: Colors.indigo,
                    child: const Center(child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
