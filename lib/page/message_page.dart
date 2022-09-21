import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/page/home_page.dart';
import 'package:instagram_ui/page/search_page.dart';
import 'package:instagram_ui/widget/card_message.dart';
import 'package:instagram_ui/widget/search.dart';
import 'package:instagram_ui/widget/user_aktif.dart';

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
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'fanes4444',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.video_call_outlined),
                  color: Colors.black),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
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
                  height: 35,
                  child: widget_search(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                child: SizedBox(
                  height: 85,
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
                    child: Text(
                      'Pesan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
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
                    physics: NeverScrollableScrollPhysics(),
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
