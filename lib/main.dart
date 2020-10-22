import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './frontpage.dart';

void main() {
  runApp(Gojek());
}

class Gojek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GojekUI(),
      ),
    );
  }
}

class GojekUI extends StatefulWidget {
  @override
  _GojekUIState createState() => _GojekUIState();
}

class _GojekUIState extends State<GojekUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrontPage(),
    );
  }
}
