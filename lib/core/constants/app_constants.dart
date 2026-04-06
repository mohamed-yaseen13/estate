class AppConstants {
  static final List<OnboardingModel> pages = [
    OnboardingModel(
      imageTop: 'assets/images/on_boarding_1_top.jpg',
      imageBottom: 'assets/images/on_boarding_1_bottom.jpg',
      title: 'ابحث عن المكان المثالي لمنزلك المستقبلي',
      subtitle: 'ابحث عن أفضل مكان لسكن أحلامك مع عائلتك وأطفالك',
    ),
    OnboardingModel(
      imageTop: 'assets/images/on_boarding_2_top.jpg',
      imageBottom: 'assets/images/on_boarding_2_bottom.jpg',
      title: 'اشتري عقارك بسرعة بنقرة واحدة فقط',
      subtitle: 'عملية شراء العقارات باستخدام هاتفك الذكي فقط',
    ),
    OnboardingModel(
      imageTop: 'assets/images/on_boarding_3_top.jpg',
      imageBottom: 'assets/images/on_boarding_3_bottom.jpg',
      title: 'اعثر على منزل أحلامك معنا',
      subtitle: 'ما عليك سوى البحث عن العقار المفضل لديك واختياره',
    ),
  ];
}

class OnboardingModel {
  final String imageTop;
  final String imageBottom;
  final String title;
  final String subtitle;

  OnboardingModel({
    required this.imageTop,
    required this.imageBottom,
    required this.title,
    required this.subtitle,
  });
}
