import 'package:flutter/material.dart';
import 'package:store/components/headline.dart';
import 'package:store/screens/auth/sign_out.dart';
import 'package:store/screens/nav.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text("Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                ),
                Icon(Icons.shopping_cart_rounded,size: 80,)
            ],),
            const SizedBox(height: 30,),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavBar()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width:300,
                  height: 50,
                  color: Colors.indigo,
                  child: const Center(child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),)),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 90 ,
                    height: 90,
                    color: Colors.grey,
                    child:  const Image(image: AssetImage('assets/apple.png'),width: 100,height: 100,),
                  ),
                ),
                const SizedBox(width: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 90 ,
                    height: 90,
                    color: Colors.white,
                    child:  const Image(image: AssetImage('assets/google.png'),width: 100,height: 100,),
                  ),
                ),
              ],),

            const SizedBox(height: 80,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(),
                Text("Or"),
                Divider()
              ],
            ),
            const SizedBox(height: 50,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text("Don't have an Account?",style: TextStyle(fontSize: 15),),
              const SizedBox(width: 5,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignOutScreen()),
                  );
                },
                child: const Text("Sign Up",
                  style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold,fontSize: 15),),
              ),
            ],),




        
          ],
        ),
      ),
    );
  }
}
