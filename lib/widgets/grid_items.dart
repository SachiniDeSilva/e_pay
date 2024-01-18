
// Import necessary packages
import 'package:e_pay/items_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItems extends StatelessWidget {
  GridItems({Key? key}) : super(key: key);

  // List of product names
  var pNames = [
    "Apple Watch -M2",
    "Lip colour",
    "Headphone",
    "Nike Shoe",
    "Water Bottle- Blue",
    "Red T-Shirt",
  ];

  @override
  Widget build(BuildContext context) {
 
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
       
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
             
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(221, 174, 234, 245),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        "15% off",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Icon(Icons.favorite, color: Colors.redAccent),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ItemsScreen()));
                    },
                    child: Image.asset("assets/${pNames[index]}.png",
                        height: 80, width: 80),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pNames[index],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          const Text(
                            "\$70",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "\$100",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 15,
                              color: Colors.black26.withOpacity(0.4),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}