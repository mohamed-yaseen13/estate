import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/widgets/header_row.dart';
import 'package:estate/features/add_estate/widgets/add_estate_form1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEstateScreen1 extends StatelessWidget {
  const AddEstateScreen1({super.key});

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
                HeaderRow(title: 'اضافة عقار'),
                verticalSpace(32),
                AddEstateForm1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
