import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/widgets/header_row.dart';
import 'package:estate/features/add_estate/widgets/add_estate_form3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEstateScreen3 extends StatelessWidget {
  const AddEstateScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(64),
                HeaderRow(title: 'تفاصيل العقار'),
                verticalSpace(48),
                AddEstateForm3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
