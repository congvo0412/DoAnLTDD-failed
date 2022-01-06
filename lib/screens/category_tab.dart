import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart.dart';

class CategoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Column(     
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd2.jpg', context),
                  SizedBox (height: 20),
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd3.jpg', context),
                  SizedBox (height: 20),
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd2.jpg', context),
                  SizedBox (height: 20),
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd3.jpg', context),
                  SizedBox (height: 20),
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd2.jpg', context),
                  SizedBox (height: 20),
                  _buildCard('Áo Thun', '200.000VNĐ','assets/images/prd3.jpg', context)        
                ],
              ),
          const SizedBox(height: 80)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, context) {
    return 
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.fromLTRB(10,10,10,10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
                            ),
                      child: Stack(
                      children: <Widget> [
                        GestureDetector(
                          onTap:(){
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DetailPage(
                            assetPath :imgPath,
                            productPrice :price,
                            productName :name,
                          )));
                          },
                          child: Hero(
                            tag: imgPath,
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                              
                            ),
                          ),
                        ),
                        Positioned(
                              top:145 ,
                              right: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: IconButton(
                                              icon: Icon(
                                                Icons.add_shopping_cart,
                                                color: Colors.deepOrange,
                                              ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => CartPage()));
                                    },
                                    ),
                              ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top:150),
                            child:Text("200.000 VND", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                            ), 
                            ), 
                            Padding(padding: EdgeInsets.only(top:170),
                            child:Text("Áo thun", style: TextStyle(fontWeight: FontWeight.w600),
                            ), 
                            ),    
                      ],
                    ),
    ),
    Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.fromLTRB(10,10,10,10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
                            ),
                      child: Stack(
                      children: <Widget> [
                        GestureDetector(
                          onTap:(){
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DetailPage(
                            assetPath :imgPath,
                            productPrice :price,
                            productName :name,
                          )));
                          },
                          child: Hero(
                            tag: imgPath,
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                              
                            ),
                          ),
                        ),
                        Positioned(
                              top:145 ,
                              right: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: IconButton(
                                              icon: Icon(
                                                Icons.add_shopping_cart,
                                                color: Colors.deepOrange,
                                              ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => CartPage()));
                                    },
                                    ),
                              ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top:150),
                            child:Text("200.000 VND", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                            ), 
                            ), 
                            Padding(padding: EdgeInsets.only(top:170),
                            child:Text("Áo thun", style: TextStyle(fontWeight: FontWeight.w600),
                            ), 
                            ),    
                      ],
                    ),
    )
    ]
  );
  }
}