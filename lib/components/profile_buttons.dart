import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  ProfileButtons({super.key, required this.buttonText, required this.onTap});
  String buttonText;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
      borderRadius:BorderRadius.circular(20) ,
        child: Container(
          width: 350,
          height: 60,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(buttonText),
                const Icon(Icons.arrow_forward_rounded)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
