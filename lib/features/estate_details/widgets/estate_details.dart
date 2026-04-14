import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/estate_details/models/estate_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EstateDetails extends StatelessWidget {
  const EstateDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final EstateDetailsModel estate = AppConstants.estate;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              estate.block,
              style:
                  AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
            ),
            Spacer(),
            Text(
              estate.price,
              style:
                  AppTextStyles.primaryDarkBlueColorInterFamily700Weight14Size,
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          children: [
            SvgPicture.asset('assets/icons/estate_details_location_icon.svg'),
            horizontalSpace(4),
            Text(
              estate.location,
              style:
                  AppTextStyles.secondaryGray4ColorInterFamily400Weight14Size,
            ),
          ],
        ),
        verticalSpace(24),
        Text(
          'تفاصيل العقار',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'غرف النوم',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/bed_icon.svg'),
                    horizontalSpace(2),
                    Text(
                      estate.bedRooms.toString(),
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight12Size,
                    ),
                  ],
                ),
                verticalSpace(12),
                Text(
                  'مباني',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Text(
                  estate.buildings.toString(),
                  style: AppTextStyles
                      .secondaryGray8ColorInterFamily600Weight12Size,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حمامات',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/bath_icon.svg'),
                    horizontalSpace(2),
                    Text(
                      estate.bathRooms.toString(),
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight12Size,
                    ),
                  ],
                ),
                verticalSpace(12),
                Text(
                  'جراج',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Text(
                  estate.garage,
                  style: AppTextStyles
                      .secondaryGray8ColorInterFamily600Weight12Size,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'منطقة',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/area_icon.svg'),
                    horizontalSpace(2),
                    Text(
                      estate.area,
                      style: AppTextStyles
                          .secondaryGray8ColorInterFamily600Weight12Size,
                    ),
                  ],
                ),
                verticalSpace(12),
                Text(
                  'حالة',
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
                Text(
                  estate.isSell ? 'للبيع' : 'للإيجار',
                  style: AppTextStyles
                      .secondaryGray8ColorInterFamily600Weight12Size,
                ),
              ],
            ),
          ],
        ),
        verticalSpace(18),
        Text(
          'وصف',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
        verticalSpace(12),
        Text(
          estate.desc,
          style: AppTextStyles.secondaryGray4ColorInterFamily400Weight12Size,
        ),
      ],
    );
  }
}
