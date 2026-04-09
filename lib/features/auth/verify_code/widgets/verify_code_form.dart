import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/features/auth/verify_code/widgets/count_down_timer.dart';
import 'package:estate/features/auth/verify_code/widgets/resend_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeForm extends StatefulWidget {
  const VerifyCodeForm({super.key});

  @override
  State<VerifyCodeForm> createState() => _VerifyCodeFormState();
}

class _VerifyCodeFormState extends State<VerifyCodeForm> {
  String code = '';
  bool canReSend = false;
  bool canVerify = false;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 90.w,
      height: 70.h,
      textStyle: AppTextStyles
          .primaryDarkBlueColorMontserratMediumFamily500Weight20Size,
      decoration: BoxDecoration(
        color: AppColors.graySoft1,
        border: Border.all(color: AppColors.graySoft1),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryDarkBlue),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  showCursor: true,
                  separatorBuilder: (index) => horizontalSpace(12),
                  onCompleted: (value) => setState(() {
                    code = value;
                    canVerify = true;
                  }),
                ),
              ),
            ),
            verticalSpace(32),
            CountdownTimer(
              initialSeconds: 60,
              onFinished: () => setState(() {
                canReSend = true;
              }),
            ),
            verticalSpace(12),
            ResendText(canReSend: canReSend),
            verticalSpace(100),
            IgnorePointer(
              ignoring: !canVerify,
              child: AppButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.newPasswordScreen);
                },
                desc: 'تأكيد',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
