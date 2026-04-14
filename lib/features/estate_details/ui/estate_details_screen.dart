import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/features/estate_details/widgets/estate_details.dart';
import 'package:estate/features/estate_details/widgets/estate_image_stack.dart';
import 'package:estate/features/estate_details/widgets/estate_facilities.dart';
import 'package:estate/features/estate_details/widgets/estate_location.dart';
import 'package:estate/features/estate_details/widgets/seller_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstateDetailsScreen extends StatelessWidget {
  const EstateDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(64),
              EstateImageStack(),
              verticalSpace(24),
              EstateDetails(),
              verticalSpace(24),
              EstateFacilities(),
              verticalSpace(18),
              EstateLocation(),
              verticalSpace(18),
              SellerDetails(),
              verticalSpace(12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        child: AppButton(onPressed: () {}, desc: 'استأجر الآن'),
      ),
    );
  }
}
