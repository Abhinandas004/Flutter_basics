import 'package:flutter/material.dart';

import 'Class_product_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // Assuming your Class_product_model.dart looks something like this:
  // class Product {
  //   final String name;
  //   final double price; // Using double for price is common
  //   final String description;
  //   final String? imageUrl; // Optional: if you have images

  //   Product({
  //     required this.name,
  //     required this.price,
  //     required this.description,
  //     this.imageUrl,
  //   });
  // }

  // product_list.dart (inside _ProductListState)

  // product_list.dart (inside _ProductListState or wherever you define your list)

  List<Product> products = [
    Product(
      name: "DJI Mini 4 Pro Drone",
      price: 759.00,
      description: "Lightweight and foldable drone with advanced obstacle sensing and 4K HDR video.",
      imageUrl: "https://images.unsplash.com/photo-1593902506801-9b88523c035a?q=80&w=2070&auto=format&fit=crop", // Example URL
    ),
    Product(
      name: "Breville Barista Express Espresso Machine",
      price: 749.95,
      description: "All-in-one espresso machine with integrated grinder and PID temperature control.",
      imageUrl: "https://images.unsplash.com/photo-1594901584909-0a12a5275a59?q=80&w=1974&auto=format&fit=crop", // Example URL
    ),
    Product(
      name: "LEGO Icons Concorde Set",
      price: 199.99,
      description: "Detailed LEGO model of the iconic supersonic passenger jet.",
      imageUrl: "https://images.unsplash.com/photo-1620955909015-c1555e100806?q=80&w=2070&auto=format&fit=crop", // Example URL (general LEGO)
    ),
    Product(
      name: "Patagonia Nano Puff Jacket",
      price: 239.00,
      description: "Warm, windproof, water-resistant jacket using PrimaLoft Gold Insulation Eco.",
      imageUrl: "https://images.unsplash.com/photo-1580979809908-1f198539b567?q=80&w=1964&auto=format&fit=crop", // Example URL (jacket)
    ),
    Product(
      name: "GoPro HERO12 Black",
      price: 399.99,
      description: "Action camera with 5.3K video, HyperSmooth 6.0 stabilization, and HDR.",
      imageUrl: "https://images.unsplash.com/photo-1608059032644-577d4835a0e5?q=80&w=2070&auto=format&fit=crop", // Example URL
    ),
    Product(
      name: "Herman Miller Aeron Chair",
      price: 1705.00,
      description: "Ergonomic office chair known for its comfort and design.",
      imageUrl: "https://images.unsplash.com/photo-1580480055273-228ff5388ef8?q=80&w=1974&auto=format&fit=crop", // Example URL (office chair)
    ),
    Product(
      name: "Ooni Koda 16 Pizza Oven",
      price: 599.00,
      description: "Gas-powered outdoor pizza oven for cooking stone-baked pizzas in 60 seconds.",
      imageUrl: "https://images.unsplash.com/photo-1590947132387-155cc02f3212?q=80&w=2070&auto=format&fit=crop", // Example URL (pizza)
    ),
    Product(
      name: "Apple Watch Series 9",
      price: 399.00,
      description: "The latest Apple Watch with new S9 SiP, double tap gesture, and brighter display.",
      imageUrl: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?q=80&w=2072&auto=format&fit=crop", // Example URL
    ),
    Product(
      name: "Bose QuietComfort Ultra Headphones",
      price: 429.00,
      description: "Premium noise-cancelling headphones with immersive audio.",
      imageUrl: "https://images.unsplash.com/photo-1505238680356-667803448bb6?q=80&w=1974&auto=format&fit=crop", // Example URL (headphones)
    ),
    Product(
      name: "Stanley Quencher H2.0 FlowState Tumbler",
      price: 45.00,
      description: "Popular large-capacity insulated tumbler with a rotating cover.",
      imageUrl: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?q=80&w=1974&auto=format&fit=crop", // Example URL (tumbler/cup)
    ),
    Product(
      name: "Kindle Scribe",
      price: 339.99,
      description: "The first Kindle for reading and writing, with a 10.2” Paperwhite display.",
      imageUrl: "https://images.unsplash.com/photo-1544947950-fa07a98d237f?q=80&w=1974&auto=format&fit=crop", // Example URL (e-reader)
    ),
    Product(
      name: "Anker 737 Power Bank (PowerCore 24K)",
      price: 149.99,
      description: "24,000mAh power bank with 140W output for charging laptops and multiple devices.",
      imageUrl: "https://images.unsplash.com/photo-1629540450978-9584b6ade104?q=80&w=1974&auto=format&fit=crop", // Example URL (power bank)
    ),
    Product(
      name: "Samsung Odyssey OLED G9 Gaming Monitor",
      price: 1799.99,
      description: "49-inch curved QD-OLED gaming monitor with high refresh rate.",
      imageUrl: "https://images.unsplash.com/photo-1593349480500-70a0bf33583a?q=80&w=2070&auto=format&fit=crop", // Example URL (monitor)
    ),
    Product(
      name: "Catan Board Game",
      price: 43.99,
      description: "Classic strategy board game of trading and resource management.",
      imageUrl: "https://images.unsplash.com/photo-1608720188044-80f0756de25f?q=80&w=1931&auto=format&fit=crop", // Example URL (board game)
    ),
    Product(
      name: "NVIDIA GeForce RTX 4090",
      price: 1599.00,
      description: "Flagship gaming GPU with exceptional performance for 4K gaming and creative workloads.",
      imageUrl: "https://images.unsplash.com/photo-1591461660390-2599c15822e1?q=80&w=2072&auto=format&fit=crop", // Example URL (GPU/PC part)
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(products[index].imageUrl.toString()),
                    ),
                  ),
                ),

                ListTile(
                  title: Text(products[index].name),
                  subtitle: Text(products[index].price.toString()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
