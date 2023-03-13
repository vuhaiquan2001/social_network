import 'package:flutter/material.dart';
import 'package:social_network/component/home_body.dart';
import 'package:social_network/component/constants.dart';

import '../component/login_scren.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBg,
      drawer: myDrawer,
      body: LoginScreen(), // HomeBody()....
    );
  }
}
