import 'package:electricalstore/Screens/HomePage.dart';
import 'package:electricalstore/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2057AB),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 150),
            child: const Center(
                child: Image(
              image: AssetImage('assets/Store_Logo.png'),
              width: 95,
              height: 95,
            )),
          ),
          const Text(
            'Electronics Store',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27.0,
            ),
          ),
          const SizedBox(
            height: 170,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: 300,
            child: const Text(
              'We provide the best electrical products from good brands',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            width: 230,
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StreamBuilder <User?>(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      return HomePage();
                    }else{
                      return Login();
                    }
                  })));

            },
            child: Container(
                height: 73,
                width: 73,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(55),
                ),
                child: const Image(
                  image: AssetImage('assets/Arrow.jpg'),
                )),
          ),
        ],
      ),
    );
  }
}
