import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/grid_items.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    List<Color> clrs =[
      const Color.fromARGB(255, 246, 111, 58),
      const Color.fromARGB(255, 36, 131, 233),
      const Color.fromARGB(255, 63, 208, 143),
     
    ];
    var imageList =[
      "assets/slide1.png",
      "assets/slide2.png",
      "assets/slide3.png",
    ];


    var iconImagesList =[
      "assets/icon1.png",
      "assets/icon2.png",
      "assets/icon3.png",
      "assets/icon4.png",
      "assets/icon5.png",
      "assets/icon6.png",
      "assets/icon7.png",
      "assets/icon8.png",
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:  const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffDAECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]
                ) ,
                child: const Icon(CupertinoIcons.cart, size: 28, color: Colors.black,),
                
                
              ),
              Container(
                padding:  const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffDAECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]
                ) ,
                child: const Icon(CupertinoIcons.search, size: 28,color: Colors.black,),
                
                
              ),
            ],
          ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Text("Hello Dear", style:TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold ,
              ) ,
              ),
              SizedBox(height: 5,),
              Text("let's shop something!", style:TextStyle(
                fontSize: 17,
                color: Colors.black45,

              ),
              )

          ]
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [ 
              for(int i=0; i<3;i++)
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width /1.5,
                height: MediaQuery.of(context).size.height /4.5,
                decoration: BoxDecoration(
                  color: clrs[i],
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [ 
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        const Text(
                          "30% off on Winter Collection",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        Container(
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: 
                          Text(
                            "Shop Now",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold
                            ),
                          )
                          ),
                        )
                      ],
                      )
                      ),
                      Image.asset(imageList[i],
                      height: 180,
                      width: 110,)
                  ],
                ),


              )
            ],
          ),
          
        ),
         const SizedBox(height: 20),
         const Padding(
          padding: EdgeInsets.symmetric(horizontal:15 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(
              "Top Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              "See All",
              style: TextStyle(
                
                color: Colors.black54,
              ),
            )
           ], 
          ),
         ),
         const SizedBox(height: 20,),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10
            ),
            child: Row(
              children: [ 
                for(var i=0; i<8; i++)
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(221, 174, 234, 245),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(66, 7, 7, 7),
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(iconImagesList[i]),

                  ),
                )
              ],
            ),
          ),
         ),
         const SizedBox(height: 10,),
         GridItems(),

        ]
      ),
    );
  }
}