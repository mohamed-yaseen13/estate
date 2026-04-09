import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/location/widgets/skip_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupLocationScreen extends StatelessWidget {
  const SetupLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkipButtonRow(),
              verticalSpace(24),
              Text(
                'أضف موقعك',
                style:
                    AppTextStyles.grayDarkColorLatoMediumFamily500Weight25Size,
              ),
              verticalSpace(18),
              Text('يمكنك تعديل هذا لاحقًا في إعدادات حسابك.'),
              verticalSpace(18),
              // Maps
            ],
          ),
        ),
      ),
    );
  }
}
