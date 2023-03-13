import 'package:flutter/material.dart';
import 'package:social_network/responsive/desktop_layout.dart';
import 'package:social_network/responsive/mobile_layout.dart';
import 'package:social_network/responsive/responsive_layout.dart';
import 'package:social_network/responsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
