// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class choice extends StatelessWidget {
  const choice({
    Key? key,
    required this.pilih,
  }) : super(key: key);
  final String pilih;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: Row(
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 227, 227),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Center(
                  child: Text(
                pilih,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
