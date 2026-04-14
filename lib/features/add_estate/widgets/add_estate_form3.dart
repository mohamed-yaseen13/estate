import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class AddEstateForm3 extends StatefulWidget {
  const AddEstateForm3({super.key});

  @override
  State<AddEstateForm3> createState() => _AddEstateForm3State();
}

class _AddEstateForm3State extends State<AddEstateForm3> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _areaController = TextEditingController();
  final _roomsController = TextEditingController();
  final _bathroomsController = TextEditingController();
  final _descController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'اسم العقار',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          AppTextFormField(
            controller: _nameController,
            placeholder: 'شقه في برج الفيروز',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'من فضلك أدخل اسم العقار';
              }
              return null;
            },
            color: AppColors.secondaryGray3,
          ),
          verticalSpace(24),
          Text(
            'التفاصيل',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'المساحه',
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight14Size,
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                      controller: _areaController,
                      placeholder: '150 م2',
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value.isNullOrEmpty()) {
                          return 'أدخل المساحه';
                        }
                        return null;
                      },
                      color: AppColors.secondaryGray3,
                    ),
                  ],
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'الغرف',
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight14Size,
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                      controller: _roomsController,
                      placeholder: '4',
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value.isNullOrEmpty()) {
                          return 'أدخل عدد الغرف';
                        }
                        return null;
                      },
                      color: AppColors.secondaryGray3,
                    ),
                  ],
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'الحمامات',
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight14Size,
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                      controller: _bathroomsController,
                      placeholder: '2',
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value.isNullOrEmpty()) {
                          return 'أدخل عدد الحمامات';
                        }
                        return null;
                      },
                      color: AppColors.secondaryGray3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(24),
          Text(
            'الوصف',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          AppTextFormField(
            controller: _descController,
            maxLines: 5,
            color: AppColors.secondaryGray3,
            placeholder: 'اضف ملاحظاتك',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'من فضلك أدخل الوصف';
              }
              return null;
            },
          ),
          verticalSpace(24),
          Text(
            'السعر',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
          ),
          verticalSpace(12),
          AppTextFormField(
            controller: _priceController,
            placeholder: '1000000 ريال',
            textInputType: TextInputType.number,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'من فضلك أدخل السعر';
              }
              return null;
            },
            color: AppColors.secondaryGray3,
          ),
          verticalSpace(60),
          AppButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
            desc: 'نشر العقار',
          ),
        ],
      ),
    );
  }
}
