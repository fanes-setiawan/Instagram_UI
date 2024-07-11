import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/search.dart';
import 'package:instagram_ui/widget/user_aktif.dart';
import 'package:instagram_ui/widget/card_message.dart';


// ignore: must_be_immutable
class message_page extends StatelessWidget {
  List user = [
    'aldi.enc',
    'nyotcot__',
  ];
  List user_chat = [
    'aldi.enc',
    'nyotcot__',
    'harifasinuzula'
        'nisteutik',
    'yusep_1409',
    '_ekoyudhi',
    'alfianm175',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> home_page()));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: const Text(
          'fanes4444',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.video_call_outlined),
                  color: Colors.black),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: SizedBox(
                  height: 40,
                  child: widget_search(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                child: SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: user.length,
                    itemBuilder: (context, index) {
                      return user_aktif(usr_aktif: user[index]);
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Pesan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:const  Text(
                      'Permintaan',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: user_chat.length,
                    itemBuilder: (context, index) {
                      return card_massage(name_chat: user_chat[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
