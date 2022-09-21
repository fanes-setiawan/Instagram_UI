// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class box_shop extends StatelessWidget {
  const box_shop({
    Key? key,
    required this.teks,
  }) : super(key: key);
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(teks),
          // fit: BoxFit.cover
        ),
      ),
    );
  }
}
