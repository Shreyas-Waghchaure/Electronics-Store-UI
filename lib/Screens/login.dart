import 'package:electricalstore/Screens/HomePage.dart';
import 'package:electricalstore/Screens/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passvisibal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor:  Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 140),
                alignment: Alignment.center,
                child: const Image(
                  image:  AssetImage('assets/Store_Logo.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 510,
                width: 650,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        'Log in to your account',
                        style:  TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.all(30.0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, bottom: 5),
                        child: const Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      height: 49,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.0), borderSide: BorderSide.none),
                          fillColor: const Color(0xFFECECEC),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, bottom: 5),
                        child: const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      height: 49,
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: passvisibal,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.0), borderSide: BorderSide.none),
                          fillColor: const Color(0xFFECECEC),
                          filled: true,
                          suffix: IconButton(onPressed: (){
                            setState(() {
                              if(passvisibal){
                                passvisibal = false;
                              }else{
                                passvisibal = true;
                              }
                            });

                          },icon: Icon(passvisibal == true ? Icons.remove_red_eye:Icons.password),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('forgot password');
                      },
                      child: Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(right: 25),
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color(0xFF1A34BF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        print('Sign in');
                      },
                      child: Center(
                        child: Container(
                          height: 53,
                          width: 350,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:  Colors.red,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                               Text(
                                'Sign in',
                                style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                               SizedBox(
                                width: 15,
                              ),
                               Image(
                                image: AssetImage(
                                  'assets/Arrow2.png',
                                ),
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                          print('clicked');
                          },
                        child: Container(
                          height: 53,
                          width: 350,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: const Text(
                            'Create New Account',
                            style:  TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}