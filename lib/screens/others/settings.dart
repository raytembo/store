import 'package:flutter/material.dart';
import 'package:store/components/settings_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Text("Still Under Development"))
          ],
        ),
      ),
    );
  }
}
