import 'package:flutter/material.dart';
import 'package:chitchat/datasource.dart';
import 'package:chitchat/views/signin.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0, 0),
                  child: Text(
                    'Sign',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: darkPrimaryColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 180.0, 0, 0),
                  child: Text(
                    'Up.',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: darkPrimaryColor,
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(280, 130, 15, 0),
                //   child: Image.asset(
                //     'images/guy.png',
                //     height: 125,
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(top: 35, right: 20, left: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    labelStyle: TextStyle(
                      color: darkPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: Icon(Icons.account_box_rounded),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: darkPrimaryColor),
                    ),
                  ),
                ),
                TextField(
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      color: darkPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: Icon(Icons.mail),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: darkPrimaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                TextField(
                  controller: phoneTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'PHONE',
                    labelStyle: TextStyle(
                      color: darkPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: Icon(Icons.call),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: darkPrimaryColor),
                    ),
                  ),
                ),
                TextField(
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      color: darkPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: Icon(Icons.lock),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: darkPrimaryColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   alignment: Alignment(1, 0),
                //   padding: EdgeInsets.only(top: 15, left: 20),
                //   child: InkWell(
                //     onTap: () {},
                //     child: Text(
                //       'Forgot Password',
                //       style: TextStyle(
                //         color: darkPrimaryColor,
                //         fontWeight: FontWeight.bold,
                //         decoration: TextDecoration.underline,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: darkPrimaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: darkPrimaryColor.withOpacity(0.7),
                            offset: Offset(5, 10),
                            spreadRadius: 3.0,
                            blurRadius: 10.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, -4),
                            spreadRadius: -2,
                            blurRadius: 20,
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 300,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Back to Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkPrimaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: darkPrimaryColor.withOpacity(0.7),
                            offset: Offset(5, 10),
                            spreadRadius: 3.0,
                            blurRadius: 10.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-2, -3),
                            spreadRadius: -2,
                            blurRadius: 15,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 40,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       "Don't have account ?",
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: darkPrimaryColor,
          //         fontSize: 15,
          //       ),
          //     ),
          //     SizedBox(
          //       width: 5.0,
          //     ),
          //     InkWell(
          //       onTap: () {},
          //       child: Text(
          //         'Register',
          //         style: TextStyle(
          //           color: darkPrimaryColor,
          //           decoration: TextDecoration.underline,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15.0,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      )
    );
  }
}