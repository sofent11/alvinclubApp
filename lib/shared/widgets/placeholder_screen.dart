import 'package:flutter/material.dart';

import 'placeholder_page.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlaceholderPage(title: title, subtitle: subtitle),
      ),
    );
  }
}
