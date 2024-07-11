import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first


class reels extends StatelessWidget {
  const reels({
    Key? key,
    required this.name_user,
  }) : super(key: key);
  final String name_user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        // width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 85,
        decoration:const  BoxDecoration(color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const   Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icons/Heart.svg',
                            color: Colors.white),
                      ),
                  const     Text(
                        '65,2rb',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icons/Comment.svg',
                            color: Colors.white),
                      ),
                    const   Text(
                        '2.900',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icons/Share.svg',
                            color: Colors.white),
                      ),
                  const     Text(
                        '102',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: NetworkImage(
                                  'https://i.pravatar.cc/100?u=$name_user'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(name_user,
                                style:const  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextButton(
                                onPressed: () {},
                                child:const  Center(
                                  child: Text(
                                    'ikuti',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    const   Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                  const     Text(
                        'ini adalah reels anda dapat menuliskan diskripsi dari reels anda pada bagian ini',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  const         Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Icon(Icons.music_note, color: Colors.white),
                                Text(
                                  'music',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pravatar.cc/100?u=$name_user'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
