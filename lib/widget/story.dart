// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class story extends StatelessWidget {
  const story({
    Key? key,
    required this.name,
    required this.user_my,
    required this.user_live,
  }) : super(key: key);

  final String name;
  final bool user_my;
  final bool user_live;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 33,
                backgroundColor: user_my ? Colors.white : Colors.pink,
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?u=$name'),
                  ),
                ),
              ),
              if (user_my)
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.blue,
                    child: Center(
                      child: Icon(Icons.add, size: 20),
                    ),
                  ),
                ),
              if (user_live)
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Center(
                      child: Text(
                        'Live',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(name,
                style: TextStyle(
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 1),
          ),
        ],
      ),
    );
  }
}
