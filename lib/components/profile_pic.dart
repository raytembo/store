import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 60,
      child: Icon(Icons.person,size: 80,),
    );
  }
}
