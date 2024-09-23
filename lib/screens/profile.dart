import 'package:flutter/material.dart';
import 'package:store/components/profile_buttons.dart';
import 'package:store/components/profile_pic.dart';
import 'package:store/screens/auth/sign_in.dart';
import 'package:store/screens/home.dart';
import 'package:store/screens/others/help.dart';
import 'package:store/screens/others/payment.dart';
import 'package:store/screens/others/privacy.dart';
import 'package:store/screens/others/settings.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List settingsName=[
      "Settings",
      "Payment Method",
      "Help Center",
      "Privacy Policy",
    ];

    List settingScreens = [
      const SettingsScreen(),
      const PaymentScreen(),
      const HelpScreen(),
      const PrivacyScreen(),
    ];


    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Center(child: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),)),
            const SizedBox(height: 20,),
            const ProfilePic(),
            const SizedBox(height: 20,),
            const Text("User",style: TextStyle(fontWeight: FontWeight.w600, fontSize:20)),
            const SizedBox(height: 20,),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: settingsName.length,
                  itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileButtons(buttonText: settingsName[index], onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => settingScreens[index]),
                    );
                  }),
                );
              })
            ),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
                child: const Text("Log Out", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),))
          ],
        ),
      ),
    );
  }
}
