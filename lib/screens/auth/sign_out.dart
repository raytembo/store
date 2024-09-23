import 'package:flutter/material.dart';
import 'package:store/screens/auth/sign_in.dart';
import 'package:store/screens/nav.dart';

class SignOutScreen extends StatelessWidget {
  const SignOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Container(
            width: 300,
            height: 100,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Check Password",
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
                child: const Center(child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),)),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 60 ,
                  height: 60,
                  color: Colors.grey,
                  child:  const Image(image: AssetImage('assets/apple.png'),width: 100,height: 100,),
                ),
              ),
              const SizedBox(width: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 60 ,
                  height: 60,
                  color: Colors.white,
                  child:  const Image(image: AssetImage('assets/google.png'),width: 100,height: 100,),
                ),
              ),
            ],),

          const SizedBox(height: 50,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(),
              Text("Or"),
              Divider()
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already Have an Account?",style: TextStyle(fontSize: 15),),
              const SizedBox(width: 5,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
                child: const Text("Sign In",
                  style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold,fontSize: 15),),
              ),
            ],),


        ],
      ),
    );
  }
}
