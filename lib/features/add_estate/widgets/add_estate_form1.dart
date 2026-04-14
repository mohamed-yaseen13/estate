import 'package:dotted_border/dotted_border.dart';
import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddEstateForm1 extends StatefulWidget {
  const AddEstateForm1({super.key});

  @override
  State<AddEstateForm1> createState() => _AddEstateForm1State();
}

class _AddEstateForm1State extends State<AddEstateForm1> {
  bool isSell = true;
  final _formKey = GlobalKey<FormState>();
  final List<String> _options = ['شقه', 'فيلا', 'منزل', 'محل'];
  String _selectedEstate = 'شقه';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'نوع العمليه',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSell = true;
                  });
                },
                child: Container(
                  width: 160.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: AppColors.graySoft1,
                    border: Border.all(
                      color: isSell
                          ? AppColors.primaryDarkBlue
                          : AppColors.graySoft1,
                    ),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Text(
                      'للبيع',
                      style: isSell
                          ? AppTextStyles
                                .primaryDarkBlueColorInterFamily500Weight16Size
                          : AppTextStyles
                                .secondaryGray8ColorInterFamily500Weight16Size,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSell = false;
                  });
                },
                child: Container(
                  width: 160.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: AppColors.graySoft1,
                    border: Border.all(
                      color: !isSell
                          ? AppColors.primaryDarkBlue
                          : AppColors.graySoft1,
                    ),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Text(
                      'للإيجار',
                      style: !isSell
                          ? AppTextStyles
                                .primaryDarkBlueColorInterFamily500Weight16Size
                          : AppTextStyles
                                .secondaryGray8ColorInterFamily500Weight16Size,
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(48),
          Text(
            'صور العقار (0/10)',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          GestureDetector(
            onTap: () {},
            child: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                radius: Radius.circular(16.r),
                color: AppColors.graySoft4,
                dashPattern: [8, 4],
                strokeWidth: 2,
              ),
              child: SizedBox(
                width: 160.w,
                height: 110.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/upload_icon.svg'),
                    verticalSpace(8),
                    Text(
                      'رفع صورة',
                      style: AppTextStyles
                          .graySoft3ColorInterFamily500Weight12Size,
                    ),
                  ],
                ),
              ),
            ),
          ),
          verticalSpace(48),
          Text(
            'نوع العقار',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (value) => setState(() => _selectedEstate = value),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            itemBuilder: (context) => _options
                .map(
                  (option) =>
                      PopupMenuItem<String>(value: option, child: Text(option)),
                )
                .toList(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondaryGray3),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedEstate,
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily400Weight14Size,
                  ),
                  Icon(Icons.keyboard_arrow_down, color: AppColors.grayDark),
                ],
              ),
            ),
          ),
          verticalSpace(164),
          AppButton(
            onPressed: () {
              context.pushNamed(AppRoutes.addEstateScreen2);
            },
            desc: 'التالي',
          ),
        ],
      ),
    );
  }
}
