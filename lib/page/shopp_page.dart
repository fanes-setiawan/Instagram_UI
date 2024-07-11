import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/shop_box.dart';
import 'package:instagram_ui/widget/shop_choice.dart';

import '../widget/search.dart';

class shopp_page extends StatefulWidget {
  const shopp_page({super.key});

  @override
  State<shopp_page> createState() => _shopp_pageState();
}

class _shopp_pageState extends State<shopp_page> {
  List list_choice = ['Toko', 'Videos', 'Pilihan editor', 'Koleksi', 'Guides'];
  List barang = [
    'https://dj7u9rvtp3yka.cloudfront.net/products/PIM-1601263896090-1fb1c8e7-2efa-4f9f-8eb4-3c5934630d1c_v1-small.jpg',
    'https://media.serbada.com/product/img/original/2020/09/21/94261-sepatu-sneakers-jintu-99.jpg',
    'https://2.bp.blogspot.com/-S6Hn-oVqPhs/VvDGkgDKn0I/AAAAAAAAAn8/ZR0WigHsTQILfpC9RPrsFwcUTvnpOJBFg/s320/Jajal%2BKaos3.jpg',
    'https://startime.co.id/wp-content/uploads/2019/08/ES1G109L0025.jpg',
    'https://s1.bukalapak.com/img/15804878171/large/Topi_Baseball_polos.jpg.webp',
    'https://s0.bukalapak.com/img/026125259/large/Grosir_Topi_Baseball_Caps_Polos_Murah_Custom_Tumblr.jpg.webp',
    'https://indonews.id/images/posts/1/2021/2021-11-11/29a0cb1f6912ed4520a03c83ba616e2d_1.jpg',
    'https://indonews.id/images/posts/1/2021/2021-11-11/ebe8f091fb3cf1f81c449269ccbf2f45_1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Toko',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.system_update_tv_sharp),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.format_list_bulleted),
                  color: Colors.black),
            ],
          )
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
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list_choice.length,
                    itemBuilder: (context, index) {
                      return choice(pilih: list_choice[index]);
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: barang.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1),
                  itemBuilder: (BuildContext context, index) {
                    return box_shop(teks: barang[index].toString());
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
