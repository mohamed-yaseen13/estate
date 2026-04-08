import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/widgets/app_nav_bar.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Reserve Screen')),
      bottomNavigationBar: AppNavBar(selectedScreen: AppNavBarEnum.reserve),
    );
  }
}
