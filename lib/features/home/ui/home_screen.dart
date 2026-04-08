import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/features/home/widgets/banners_row.dart';
import 'package:estate/features/home/widgets/explore_estates_section.dart';
import 'package:estate/features/home/widgets/featured_estates_row.dart';
import 'package:estate/features/home/widgets/filters_row.dart';
import 'package:estate/features/home/widgets/search_text_field.dart';
import 'package:estate/features/home/widgets/top_locations_row.dart';
import 'package:estate/features/home/widgets/welcome_stack.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeStack(),
            SearchTextField(),
            verticalSpace(18),
            FiltersRow(),
            verticalSpace(18),
            BannersRow(),
            verticalSpace(18),
            FeaturedEstatesRow(),
            verticalSpace(18),
            TopLocationsRow(),
            verticalSpace(18),
            ExploreEstatesSection(),
          ],
        ),
      ),
    );
  }
}
