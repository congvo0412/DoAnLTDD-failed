import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'package:hello_world/screens/home.dart';
import 'package:hello_world/screens/category.dart';
import 'package:hello_world/screens/account.dart';
import 'package:hello_world/screens/notification.dart';
import 'package:hello_world/screens/cart.dart';
import 'package:hello_world/screens/login.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Tài khoản của tôi")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hồ sơ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Đơn hàng",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ví của tôi",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hỗ trợ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Địa chỉ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Voucher của tôi",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cài đặt",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ShopingTab()));
                      },
                      child: Text(
                        "Đăng xuất",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
            ],
          )
        ],
      ),
    ); 
  }
}
