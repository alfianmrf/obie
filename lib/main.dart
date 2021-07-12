import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ),
    );
    return Container(
      color: Color(0xffF2663B),
      child: Stack(
        children: [
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/bg-orange.svg',
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 120),
                      child: Image.asset("assets/OBIE tok hitam.png",),
                    ),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(20),
                                    padding: EdgeInsets.all(20),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Please Log In',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20, left: 10),
                                          width: double.infinity,
                                          child: Text(
                                            'Email',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10, top: 5),
                                          child: TextField(
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              hintText: "johndoe@gmail.com",
                                              isDense: true,
                                              suffixIcon: Icon(Icons.mail),
                                              suffixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
                                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                                            ),
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20, left: 10),
                                          width: double.infinity,
                                          child: Text(
                                            'Password',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                                          child: TextField(
                                            keyboardType: TextInputType.text,
                                            obscureText: !_passwordVisible,
                                            decoration: InputDecoration(
                                              hintText: "•••••••",
                                              hintStyle: TextStyle(
                                                letterSpacing: 3,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              isDense: true,
                                              suffixIcon: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    _passwordVisible = !_passwordVisible;
                                                  });
                                                },
                                                child: Icon(_passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off),
                                              ),
                                              suffixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
                                              contentPadding: EdgeInsets.symmetric(vertical: 10),
                                            ),
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 6,
                                          color: Color(0xffF2663B),
                                        ),
                                      ),
                                      padding: EdgeInsets.all(12),
                                      child: Image.asset("assets/key.png", width: 25,),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8), // <-- Radius
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(width: double.infinity, height: 0.5, color: Colors.white, margin: EdgeInsets.only(right: 10),),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'or sign in with',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(width: double.infinity, height: 0.5, color: Colors.white, margin: EdgeInsets.only(left: 10),),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Image.asset("assets/facebook.png", width: 20,),
                                              Expanded(
                                                child: Center(
                                                  child: Text(
                                                    'Facebook',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8), // <-- Radius
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Image.asset("assets/google.png", width: 20,),
                                              Expanded(
                                                child: Center(
                                                  child: Text(
                                                    'Google',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8), // <-- Radius
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 25),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have an account? ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){},
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -1,
                          left: 0,
                          right: 0,
                          child: SvgPicture.asset(
                            'assets/bg-white.svg',
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}