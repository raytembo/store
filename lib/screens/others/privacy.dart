import 'package:flutter/material.dart';
import 'package:store/components/headline.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Privacy Policies"),),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Store is committed to protecting your privacy. This privacy policy explains how we collect, use, and protect your personal information.", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
           const Text("We may collect personal information such as your name, email address and other information you voluntarily provide"),
           const Text("We use your information to:Provide you with our servicesCommunicate with youImprove our services"),
          const Text("We may share your information with trusted third parties who help us provide our services."),
          const Text("We take reasonable measures to protect your information from unauthorized access."),
          const Text("We may update this policy from time to time. Please check back regularly for changes."),
          const Text("If you have any questions about this policy, please contact us at raytembo23@yahoo.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 80,
              height: 40,
              color: Colors.indigo,
              child: const Icon(Icons.info,color: Colors.white,),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Store 2024",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
            SizedBox(width: 5,),
            Icon(Icons.copyright)
          ],),


        ],),
      )
    );
  }
}
