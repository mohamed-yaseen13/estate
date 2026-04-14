import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/header_row.dart';
import 'package:estate/features/reserve_confirmation/widgets/reserve_estate_container.dart';
import 'package:estate/features/reserve_confirmation/widgets/reserve_form.dart';
import 'package:estate/features/reserve_confirmation/widgets/reserve_success_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReserveConfirmationScreen extends StatelessWidget {
  const ReserveConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(64),
                HeaderRow(title: 'تأكيد الحجز'),
                verticalSpace(24),
                ReserveEstateContainer(),
                verticalSpace(24),
                ReserveForm(),
                verticalSpace(12),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
        child: AppButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => ReserveSuccessBottomSheet(),
            );
          },
          desc: 'تأكيد الحجز',
        ),
      ),
    );
  }
}
