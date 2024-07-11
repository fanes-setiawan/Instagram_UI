import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/post.dart';
import 'package:instagram_ui/widget/story.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/page/message_page.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List user = [
    'fanes4444',
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
        title: SvgPicture.asset('asset/logo/Instagram_logo.svg'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('asset/icons/Add Icon Filled.svg',
                    color: Colors.black),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('asset/icons/Heart.svg',
                          color: Colors.black)),
            const       Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => message_page()));
                },
                icon: SvgPicture.asset('asset/icons/Share.svg',
                    color: Colors.black),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    return story(
                      name: user[index],
                      user_my: index == 0 ? true : false,
                      user_live: index == 1 ? true : false,
                    );
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.3,
                // height: 10,
              ),
              Flexible(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    return post_user(name_us: user[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
