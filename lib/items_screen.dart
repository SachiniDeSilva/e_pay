import 'package:e_pay/widgets/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(221, 174, 234, 245),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
              child: Stack( 
                children: [ 
                  Center(child: productImageSlider(),),
                  Padding(padding:EdgeInsets.only(left: 15,top: 20),
                  child: InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                    
                  ),
                  ),
                  ),

                ],
              )
            
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(10),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" Apple Watch Series", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),),
              SizedBox(height: 10,),
              Row(children: [ 
                Row(children: [ 
                  RatingBar.builder(
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemBuilder: (context,_) => Icon(Icons.star, color: Colors.amber,),
                    onRatingUpdate: (rating){},
                
                  ),
                  SizedBox(width: 5,),
                  Text("\(300)"),
                              ])
              ],),
              SizedBox(height: 15,),
              Row(
                children: [ 
                  Text("\$170",
                  style: TextStyle( 
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  SizedBox(width: 5,),
                  Text("\$200",
                  style: TextStyle( 
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", style: TextStyle(
                fontSize:16 
              ), textAlign: TextAlign.justify,
              )
            ],
            ),
            )
          ],
        ) 
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent
                ),
                child: Center(
                  child: Text("Add to cart", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 188, 231, 245)
                ),
                child: Center(
                  child: Icon(Icons.favorite_outline, color: Colors.redAccent, size: 30,),
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}