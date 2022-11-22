import 'package:flutter/material.dart';
import 'package:transitions_app/pages/pagina2_page.dart';


class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, _crearRuta());
        },
        child: Icon(Icons.access_time),
        ),
    );
  }
  
  Route _crearRuta() {

    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Pagina2Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child){

        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero).animate( curvedAnimation ),
        //   child: child,
        //   );

        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: child,
          );
      }
      );
  }
}