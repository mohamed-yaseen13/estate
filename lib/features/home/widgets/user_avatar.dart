import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: AssetImage('assets/images/home_avatar.jpg'),
      radius: 24.r,
    );
  }
}
