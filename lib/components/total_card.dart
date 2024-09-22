import 'package:flutter/material.dart';

class TotalCard extends StatelessWidget {
   TotalCard({super.key, required this.orderAmount, required this.tax, required this.totalPayment, required this.onTap});

  int orderAmount;
  int tax;
  int totalPayment;
  final onTap;

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
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("Order Amount",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(orderAmount.toString())
                  ],),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("Tax",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(tax.toString())
                  ],),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("Total Payment",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(totalPayment.toString())
                  ],),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: onTap,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 300,
                      height:50,
                      color: Colors.indigo,
                      child: const Center(child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                    ),
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
