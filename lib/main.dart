import 'package:flutter/material.dart';

import 'package:transitions_app/pages/pagina1_page.dart';
import 'package:transitions_app/pages/pagina2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Pagina1Page(),
    );
  }
}