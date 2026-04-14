import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReserveForm extends StatefulWidget {
  const ReserveForm({super.key});

  @override
  State<ReserveForm> createState() => _ReserveFormState();
}

class _ReserveFormState extends State<ReserveForm> {
  final _formKey = GlobalKey<FormState>();
  final _rentController = TextEditingController();
  bool _isCash = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مده الايجار',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(2),
          Container(
            decoration: BoxDecoration(
              color: AppColors.graySoft1,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: AppTextFormField(
              textInputType: TextInputType.number,
              controller: _rentController,
              color: AppColors.graySoft1,
              suffixIcon: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Text(
                    'شهر',
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily600Weight14Size,
                  ),
                ),
              ),
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return 'من فضلك أدخل مدة الإيجار';
                } else {
                  return null;
                }
              },
            ),
          ),
          verticalSpace(24),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'موعد الاستلام',
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight14Size,
                    ),
                    Container(
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: AppColors.graySoft1,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            horizontalSpace(12),
                            SvgPicture.asset('assets/icons/calendar_icon.svg'),
                            horizontalSpace(8),
                            Text(
                              '12/10/2025',
                              style: AppTextStyles
                                  .grayBarelyMediumColorinterFamily400Weight12Size,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'موعد التسليم',
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight14Size,
                    ),
                    Container(
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: AppColors.graySoft1,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            horizontalSpace(12),
                            SvgPicture.asset('assets/icons/calendar_icon.svg'),
                            horizontalSpace(8),
                            Text(
                              '12/10/2026',
                              style: AppTextStyles
                                  .grayBarelyMediumColorinterFamily400Weight12Size,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(24),
          Text(
            'اختار طريقه الدفع',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          Row(
            children: [
              Checkbox(
                value: _isCash,
                onChanged: (value) {
                  setState(() {
                    _isCash = true;
                  });
                },
                activeColor: AppColors.primaryDarkBlue,
                checkColor: Colors.white,
                side: BorderSide(color: Color(0xFFD1D5DC), width: 2.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5.r),
                ),
              ),
              horizontalSpace(12),
              Text(
                'الدفع عند الاستلام',
                style: AppTextStyles.grayColorinterFamily500Weight14Size,
              ),
            ],
          ),
          verticalSpace(18),
          Row(
            children: [
              Checkbox(
                value: !_isCash,
                onChanged: (value) {
                  setState(() {
                    _isCash = false;
                  });
                },
                activeColor: AppColors.primaryDarkBlue,
                checkColor: Colors.white,
                side: BorderSide(color: Color(0xFFD1D5DC), width: 2.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5.r),
                ),
              ),
              horizontalSpace(12),
              Text(
                'الدفع بأستخدام محفظه',
                style: AppTextStyles.grayColorinterFamily500Weight14Size,
              ),
              Spacer(),
              Text(
                'رصيدك الحالي 12253.20 ريال',
                style: AppTextStyles.grayColorinterFamily500Weight10Size,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
