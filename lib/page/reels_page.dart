import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/widget/reels.dart';

import '../widget/story.dart';

class reels_page extends StatefulWidget {
  const reels_page({super.key});

  @override
  State<reels_page> createState() => _reels_pageState();
}

class _reels_pageState extends State<reels_page> {
  List user_user = [
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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: user_user.length,
        itemBuilder: (context, index) {
          return reels(name_user: user_user[index]);
        }
      ),
    );
  }
}
