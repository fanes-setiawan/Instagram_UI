// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class save_story extends StatelessWidget {
  const save_story({
    Key? key,
    required this.add,
  }) : super(key: key);
  final bool add;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 227, 227),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        if (add)
          Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Icon(Icons.add, size: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'baru',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
