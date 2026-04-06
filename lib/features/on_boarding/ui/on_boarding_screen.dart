import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/features/on_boarding/widgets/on_boarding_bottom_button.dart';
import 'package:estate/features/on_boarding/widgets/on_boarding_dots.dart';
import 'package:estate/features/on_boarding/widgets/on_boarding_page_details.dart';
import 'package:estate/features/on_boarding/widgets/on_boarding_skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            OnBoardingSkipButton(),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: AppConstants.pages.length,
                itemBuilder: (context, index) {
                  return OnBoardingPageDetails(
                    model: AppConstants.pages[index],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                children: [
                  OnBoardingDots(currentIndex: _currentIndex),
                  verticalSpace(40),
                  OnBoardingBottomButton(
                    currentIndex: _currentIndex,
                    pageController: _pageController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
