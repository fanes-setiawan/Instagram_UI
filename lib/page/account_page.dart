import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/save_story.dart';


// ignore: must_be_immutable
class account_page extends StatelessWidget {
  final bool _pinned = true;
  List url=[
    'https://picsum.photos/seed/name_us/500/500',
    'https://picsum.photos/seed/nameus/500/500',
    'https://picsum.photos/seed/us/500/500'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'fanes4444',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon:const  Icon(Icons.add_box_outlined),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon:const  Icon(Icons.format_list_bulleted),
                  color: Colors.black)
            ],
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
          const     Column(
                children: [
                  SizedBox(
                    height: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('asset/logo/profil.jpeg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              'Postingan',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '10.534',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              'Pengikut',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              'Mengikuti',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
        const       Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'fanes setiawan',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '</>',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color:const  Color.fromARGB(255, 228, 227, 227),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text('Edit Profil'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color:const  Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Icon(
                            Icons.person_add_outlined,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title:const  Text(
                    'Sorotan Cerita',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  children: [
                  const   Padding(
                      padding:  EdgeInsets.only(left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Simpan favorit di profil Anda'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: SizedBox(
                        width: double.infinity,
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: save_story(add: index == 0 ? true : false),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: DefaultTabController(
                  length: 2,
                  child: NestedScrollView(
                    headerSliverBuilder: (context, value) {
                      return [
                        SliverAppBar(
                          elevation: 0,
                          floating: true,
                          pinned: _pinned,
                          toolbarHeight: 0,
                          backgroundColor: Colors.white,
                          bottom:const  TabBar(
                            indicatorColor: Colors.black,
                            tabs:  [
                              Tab(
                                child: Icon(
                                  Icons.apps,
                                  color: Colors.black,
                                ),
                              ),
                              Tab(
                                child: Icon(
                                  Icons.person_pin_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ];
                    },
                    body: TabBarView(
                      children: [
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          gridDelegate:
                          const     SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 1),
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(url[index].toString()),
                                  fit: BoxFit.cover,
                                )
                              ),
                            );
                          },
                        ),
                      const   Text(
                          'no picture',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
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
