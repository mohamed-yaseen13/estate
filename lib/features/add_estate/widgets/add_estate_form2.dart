import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddEstateForm2 extends StatefulWidget {
  const AddEstateForm2({super.key});

  @override
  State<AddEstateForm2> createState() => _AddEstateForm2State();
}

class _AddEstateForm2State extends State<AddEstateForm2> {
  final _formKey = GlobalKey<FormState>();
  final List<String> _options = ['جده', 'الرياض', 'ابو ظبي', 'الدمام'];
  String _selectedEstate = 'جده';
  final _districtController = TextEditingController();
  final _streetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المدينه',
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
          verticalSpace(24),
          Text(
            'الحي',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          AppTextFormField(
            controller: _districtController,
            placeholder: 'حي النرجس',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'من فضلك أدخل الحي السكني';
              } else {
                return null;
              }
            },
            color: AppColors.secondaryGray3,
          ),
          verticalSpace(24),
          Row(
            children: [
              Text(
                'اسم الشارع',
                style:
                    AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
              ),
              Text(
                '  (اختياري)',
                style:
                    AppTextStyles.secondaryGray4ColorInterFamily400Weight12Size,
              ),
            ],
          ),
          AppTextFormField(
            controller: _streetController,
            placeholder: 'شارع النصر',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'من فضلك أدخل الحي السكني';
              } else {
                return null;
              }
            },
            color: AppColors.secondaryGray3,
          ),
          verticalSpace(48),
          Container(
            width: double.infinity,
            height: 90.h,
            decoration: BoxDecoration(
              color: AppColors.secondaryGray5,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/add_estate_location_icon.svg'),
                  horizontalSpace(18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تحديد الموقع على الخريطة',
                        style: AppTextStyles
                            .primaryDarkBlueColorInterFamily500Weight16Size,
                      ),
                      verticalSpace(8),
                      Text(
                        'اضغط هنا لتحديد موقع العقار بدقة على الخريطة',
                        style: AppTextStyles
                            .secondaryGray4ColorInterFamily400Weight14Size,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(164),
          AppButton(
            onPressed: () {
              context.pushNamed(AppRoutes.addEstateScreen3);
            },
            desc: 'التالي',
          ),
        ],
      ),
    );
  }
}
