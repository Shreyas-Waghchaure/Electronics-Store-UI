import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Electronics Store',style: TextStyle(color: Color(0xFF2057AB),fontWeight: FontWeight.w500,fontSize: 22),),
        centerTitle: true,
      ),
    );
  }
}
