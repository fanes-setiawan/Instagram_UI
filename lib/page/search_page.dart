import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/search.dart';

class search_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: widget_search(),
        ),
      ),
    );
  }
}
