import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class widget_search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 227, 227),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 20,
              ),
              hintText: 'Cari',
              border: InputBorder.none),
          cursorColor: Colors.grey,
          cursorWidth: 1,
        ),
      ),
    );
  }
}
