import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passvisibal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 130),
                alignment: Alignment.center,
                child: const Image(
                  image: AssetImage('assets/Store_Logo.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 570,
                width: 650,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        'Create new Account',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.all(30.0),
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
                      height: 15,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, bottom: 5),
                        child: const Text(
                          'Phone No',
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
                      height: 15,
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
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passvisibal) {
                                  passvisibal = false;
                                } else {
                                  passvisibal = true;
                                }
                              });
                            },
                            icon: Icon(passvisibal == true ? Icons.remove_red_eye : Icons.password_sharp),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, bottom: 5),
                        child: const Text(
                          'Confirm Password',
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
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Account Create');
                      },
                      child: Center(
                        child: Container(
                          height: 53,
                          width: 350,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
