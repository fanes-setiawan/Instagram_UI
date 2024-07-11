import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class card_massage extends StatelessWidget {
  const card_massage({
    Key? key,
    required this.name_chat,
  }) : super(key: key);
  final String name_chat;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        title: Text(
          name_chat,
          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        subtitle:const  Text(
          'Terkirim',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.pink,
          child: CircleAvatar(
            radius: 28,
            backgroundImage:
                NetworkImage('https://i.pravatar.cc/100?u=$name_chat'),
          ),
        ),
      ),
    );
  }
}
