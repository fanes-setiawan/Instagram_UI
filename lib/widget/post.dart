// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class post_user extends StatelessWidget {
  const post_user({
    Key? key,
    required this.name_us,
  }) : super(key: key);
  final String name_us;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    NetworkImage('https://picsum.photos/seed/$name_us/500/500'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/100?u=$name_us'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name_us,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'indonesia',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ],
            ),
          ),
        ),
        //Padding(padding: EdgeInsets.only(top: 8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('asset/icons/Heart.svg')),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('asset/icons/Comment.svg')),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('asset/icons/Share.svg')),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('asset/icons/Bookmark.svg'))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '23.343 suka',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "fanes4444",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'keindahan dapat dirasakan atas rasa syukur atas apa yang diberikan dari allah kepada makhluknya -fones-',
                    style: TextStyle(fontSize: 13)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'selengkapnya',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lihat semua 3000 komentar',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                '1 jam yang lalu',
                style: TextStyle(fontSize: 11, color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
