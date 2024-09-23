import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(title: const Text("Help Centre"),backgroundColor: Colors.indigo[50],),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          const Center(child: Text('What can we help you with?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  hintText: "Enter your Contact",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              minLines: 2,
              maxLines: 4,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.help),
                  hintText: "What's the Issue?",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          ),
          const SizedBox(height: 30,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 300,
              height: 50,
              color: Colors.indigo,
              child: const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
            ),
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Divider(),
              Text("Or"),
              Divider()
            ],),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 300,
              height: 50,
              color: Colors.indigo,
              child:  const Icon(Icons.message,color: Colors.white,size: 30,)
            ),
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap: () {

            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 300,
                height: 50,
                color: Colors.indigo,
                child:  const Icon(Icons.support_agent,color: Colors.white,size: 30,)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
