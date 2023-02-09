import 'package:flutter/material.dart';
import 'package:responsive_flutter/reponsive/dekstop_body.dart';
import 'package:responsive_flutter/reponsive/mobile_body.dart';
import 'package:responsive_flutter/reponsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        dekstopBody: MyDekstopBody(),
      ),
    );
  }
}