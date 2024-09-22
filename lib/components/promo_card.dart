import 'package:flutter/material.dart';
import 'package:store/screens/others/discount_screen.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 390,
          height: 200,
          color: Colors.black,
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Get Your Special Sales Up to 50%",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                         ),
                       ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DiscountScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 100,
                              height: 40,
                              color: Colors.indigo,
                              child: const Center(child: Text(
                                "Shop Now", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.white,
                              ),),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Image(image: AssetImage("assets/girly.png"),width: 140,height: 200,fit:BoxFit.fill,)
                ],
        
              )
            ],
          ),
        ),
      ),
    );
  }
}
