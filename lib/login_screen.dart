import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:login_ui/register_screen.dart';
import 'package:login_ui/second.dart';
import 'package:login_ui/widgets/custom_checkbox.dart';
import 'package:login_ui/widgets/forgot_screen.dart';
import 'package:login_ui/widgets/primary_btn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

 var emailcontroller = TextEditingController();
 var passcontroller = TextEditingController();

  @override
 void initState() {
   super.initState();
   checkLogin();
 }


 void checkLogin() async{
   SharedPreferences pref = await SharedPreferences.getInstance();
   String? val = pref.getString("login");
   if (val !=null) {
     Navigator.of(context).pushAndRemoveUntil(
       MaterialPageRoute(builder: (context) => Second()),
       (route) => false);
   }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Đăng Nhập',
                    style: heading2.copyWith(color: textBlack),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/accent.png',
                    width: 99,
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller: passcontroller,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                 const SizedBox(
                    width: 12,
                  ),
                  Text('Ghi Nhớ', style: regular16pt),
                ],
              ),
             const SizedBox(
                height: 32,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                onTap: (){
                  login();
                },
                child: Text('Đăng nhập'),
              ),
                ],
              ),
  
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Hoặc',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
            const SizedBox(
                height: 24,
              ),
              CustomPrimaryButton(
                buttonColor: Color(0xfffbfbfb),
                textValue: 'Đăng nhập với Google',
                textColor: textBlack,
              ),
              SizedBox(
                height: 24,
              ),
              CustomPrimaryButton(
                buttonColor: Color(0xfffbfbfb),
                textValue: 'Đăng nhập với Facebook',
                textColor: textBlack,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Chưa có tài khoản? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Đăng kí',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Quên mật khẩu? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotScreen()));
                    },
                    child: Text(
                      'Lấy lại',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),   
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



Future<void>login()async {
    if(passcontroller.text.isNotEmpty && emailcontroller.text.isNotEmpty){
      var response = await http.post(Uri.parse("https://reqres.in/api/login"), 
      body: ({
        'email':emailcontroller.text, 
        'password':passcontroller.text
        }));
        if(response.statusCode == 200){
          final body = jsonDecode(response.body);

          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Token: ${body['token']}")));

          pageRoute(body['token']);

        } else {
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sai tài khoản !")));
        }

    } else {
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text("Không cho phép")));
    }
  }

  void pageRoute(String token) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
          await pref.setString("login", token);
           Navigator.of(context).pushAndRemoveUntil(
       MaterialPageRoute(builder: (context) => Second()),
       (route) => false);
  }
}


