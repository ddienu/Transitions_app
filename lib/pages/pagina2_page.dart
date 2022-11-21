import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
        backgroundColor: Colors.green.withOpacity(0.2),
        elevation: 10,
      ),
      body: Center(
        child: Text('Página 2', style: TextStyle( color: Colors.white),),
      ),
          
    );
  }
}