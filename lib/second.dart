import 'package:flutter/material.dart';
import 'package:login_ui/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  String token = "";

  @override

  void initState() {
    super.initState();
    getCred();
  }

  void getCred() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      token = pref.getString("login")!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Đã đăng nhập"),
          SizedBox(height: 50,),
          OutlinedButton.icon(onPressed: () async{
            SharedPreferences pref = await SharedPreferences.getInstance();
            await pref.clear();
             Navigator.of(context).pushAndRemoveUntil(
       MaterialPageRoute(builder: (context) => LoginScreen()),
       (route) => false);
          }, icon: Icon(Icons.exit_to_app,size: 18,), label: Text("Logout"),)
        ],),),
    );
  }
}