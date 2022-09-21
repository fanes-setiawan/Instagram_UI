// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class user_aktif extends StatelessWidget {
  const user_aktif({
    Key? key,
    required this.usr_aktif,
  }) : super(key: key);
  final String usr_aktif;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 33,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 31,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 29,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?u=$usr_aktif'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(usr_aktif,
              style: TextStyle(
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 1),
        ),
      ],
    );
  }
}
