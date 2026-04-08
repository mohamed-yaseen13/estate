import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/features/home/widgets/banners_row.dart';
import 'package:estate/features/home/widgets/filters_row.dart';
import 'package:estate/features/home/widgets/search_text_field.dart';
import 'package:estate/features/home/widgets/welcome_stack.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeStack(),
          SearchTextField(),
          verticalSpace(18),
          FiltersRow(),
          verticalSpace(18),
          BannersRow(),
          verticalSpace(18),
          // Featured Estates
        ],
      ),
    );
  }
}
