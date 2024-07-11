import 'package:flutter/material.dart';

class widget_search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 228, 227, 227),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const TextField(
          maxLines: 1,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              hintText: 'Cari...',
              hintStyle: TextStyle(
                fontSize: 20
              ),
              border: InputBorder.none),
          cursorColor: Colors.grey,
          cursorWidth: 1,
        ),
      ),
    );
  }
}
