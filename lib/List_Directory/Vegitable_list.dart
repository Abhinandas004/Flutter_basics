import 'package:basics/List_Directory/Class_product_model.dart';
import 'package:basics/List_Directory/Vegitable_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegitableList extends StatefulWidget {
  const VegitableList({super.key});

  @override
  State<VegitableList> createState() => _VegitableListState();
}

class _VegitableListState extends State<VegitableList> {

  List<Vegitable> vegitable = [
    Vegitable(name: "Cabbage", price: 20.00, imageUrl: "https://exat8rt6fi5.exactdn.com/wp-content/uploads/2022/05/cabbage-01.jpg?strip=all&l;ossy=1&ssl=1",),
  Vegitable(name: "Tomoto", price: 18.00, imageUrl: "https://www.alimentarium.org/sites/default/files/media/image/2016-10/AL001-02%20tomate_0.jpg",),
  Vegitable(name: "Carrot", price: 38.00, imageUrl: "https://5.imimg.com/data5/SELLER/Default/2025/3/495998843/WX/SQ/NL/66789684/fresh-organic-carrot.jpg",),
  Vegitable(name: "Potato", price: 18.00, imageUrl: "https://m.media-amazon.com/images/I/41QKCkQ2A5L.jpg",)
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: vegitable.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(vegitable[index].imageUrl.toString()),
                    ),
                  ),
                ),

                ListTile(
                  title: Text(vegitable[index].name),
                  subtitle: Text(vegitable[index].price.toString()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
