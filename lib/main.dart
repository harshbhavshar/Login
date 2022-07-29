import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      title: 'Material App',
      home: First(),
    );
  }
}
