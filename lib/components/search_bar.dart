import 'package:flutter/material.dart';


class MainSearchBar extends StatelessWidget {
  const MainSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "Explore",
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red,style: BorderStyle.none),
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
    );
  }
}
