import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment Methods"),),
      body: const Column(
        children: [
          Center(child: Text("Still Under development"))
        ],
      ),
    );
  }
}
