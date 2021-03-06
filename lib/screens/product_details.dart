  import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/checkout.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends StatefulWidget{
  final assetPath, productPrice, productName;
  const DetailPage({this.assetPath, this. productPrice, this.productName});

  @override
  _MyCustomState createState() => _MyCustomState();
}
class _MyCustomState extends State<DetailPage> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
            _productImage(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 18, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.grey.shade200,
                  ),
                  child: _productDetail()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productImage() {
    return Stack(
      children:<Widget> [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 300,
              decoration: new BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.elliptical(300, 50)),
              ),
            ),
          ),
        ),
        Center(
          child: Image.asset(
            'assets/images/prd2.jpg',
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _productDetail() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '??o Thun',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.deepOrange),
              child: Text(
                '200.000 VND',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.deepOrange),
              child: Text(
                'S   M   L   XL',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: ReadMoreText(
              'M?? T??? S???N PH???M: ??o Thun C??? Tr??n ????n Gi???n M25 | Ch???t li???u: Cotton 4 chi???u | Th??nh ph???n: 92% cotton 8%',
              trimLines: 1,
              style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
              colorClickableText: Colors.deepOrange,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Xem th??m',
              trimExpandedText: 'Thu g???n',
              moreStyle: TextStyle(fontSize: 14,color: Colors.deepOrange),
            ),
        ),
        SizedBox(
          height: 14,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_count > 1) {
                  setState(() => _count--);
                  }
                  else{setState(() => _count = 1);}
                },
                child: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,
                                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)
                                                ),
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                '$_count',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                width: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() => _count++);
                },
                child: Icon(Icons.add),
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,
                                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)
                                               ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightBlue,
                                                ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                child: Text(
                  '?????t h??ng',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
            ),
          ),
        ]),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
