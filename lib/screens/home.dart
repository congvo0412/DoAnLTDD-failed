import 'package:flutter/material.dart';
import 'package:hello_world/screens/cart.dart';
import 'package:hello_world/screens/product_details.dart';
import 'package:hello_world/screens/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomePageDetay(),
    );
  }
}
class HomePageDetay extends StatefulWidget {
  const HomePageDetay({Key? key}) : super(key: key);
  @override
  State<HomePageDetay> createState() => _HomePageDetayState();
}

class _HomePageDetayState extends State<HomePageDetay> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                  },
                  child: Image(
                        height:100,
                        width:100,
                        image: AssetImage("assets/images/logoshop.png"),
                  )
                ),
      
                Container(
                  height: 45,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color:Colors.deepOrange),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: 12, color: Colors.black.withOpacity(0.4)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
            ),
            Padding(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.deepOrange,
                            ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  ),
            ),
          
            Padding(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                            icon: Icon(
                              Icons.message,
                              color: Colors.deepOrange,
                            ),
                  onPressed: () {},
                  ),
            ),    
           ],
            ),

            Divider(
                  color: Colors.black,
                ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => CategoryPage()));
                  },
                  child: Text(
                        "Danh Mục",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                  ),
                  InkWell(
                  onTap: () {
                  },
                  child: Text(
                        "Sale",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                  )
              ],
              ),
            Padding(
              padding: const EdgeInsets.only(top:0),
              child: Hero(
                tag:"assets/images/banner.png",
                child: Image(
                  height: 215,
                width: 500,
                  image: AssetImage("assets/images/banner.png"),
                ),
              ),
            ),
            Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                            children:[
                              Divider(color: Colors.black),  
                              Text("Sản Phẩm Bán Chạy",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize:15,
                                              fontWeight: FontWeight.bold),
                              ),
                              Divider(color: Colors.black),
                            ]
                            ),
                 ),
                 SizedBox (height: 10),
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
                          MaterialPageRoute(builder: (_) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd2.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd2.jpg"),
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
                          MaterialPageRoute(builder: (context) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd3.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd3.jpg"),
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
              ],
            ),
           SizedBox (height: 20),
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
                          MaterialPageRoute(builder: (_) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd2.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd2.jpg"),
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
                          MaterialPageRoute(builder: (context) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd3.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd3.jpg"),
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
              ],
            ),
           SizedBox (height: 20),
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
                          MaterialPageRoute(builder: (_) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd2.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd2.jpg"),
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
                          MaterialPageRoute(builder: (context) => DetailPage()));
                          },
                          child: Hero(
                            tag: "assets/images/prd3.jpg",
                            child: Image(
                              height: 140,
                              width: 150,
                              image: AssetImage("assets/images/prd3.jpg"),
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
              ],
            ),
          ],
        ),
      ],
    );
  }
}
