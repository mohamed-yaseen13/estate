import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD3DCE1),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: FloatingActionButton(
          backgroundColor: AppColors.primaryDarkBlue,
          elevation: 0,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
