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

  static final List<String> filters = ['الكل', 'فيلا', 'منزل', 'شقة', 'محل'];

  static final List<BannerModel> banners = [
    BannerModel(
      desc: 'جميع الخصومات تصل إلى 60%',
      imagePath: 'assets/images/banner1.jpg',
      title: 'تخفيضات الجمعه البيضاء!',
    ),
    BannerModel(
      desc: 'جميع الخصومات تصل إلى 60%',
      imagePath: 'assets/images/banner2.png',
      title: 'الصيف العطلة',
    ),
  ];

  static final List<FeaturedEstateModel> featuredEstates = [
    FeaturedEstateModel(
      imagePath: 'assets/images/featured1.png',
      location: 'جده، السعوديه',
      price: '34290 ريال',
      rate: '4.9',
      title: 'شقه\nبرج الفردوس ',
      type: 'بيع',
    ),
    FeaturedEstateModel(
      imagePath: 'assets/images/featured2.jpg',
      location: 'جده، السعوديه',
      price: '220 ريال',
      rate: '4.2',
      title: 'شقه\nبرج الفردوس ',
      type: 'ايجار',
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

class BannerModel {
  final String imagePath, title, desc;

  BannerModel({
    required this.desc,
    required this.imagePath,
    required this.title,
  });
}

class FeaturedEstateModel {
  final String imagePath, title, rate, location, price, type;

  FeaturedEstateModel({
    required this.imagePath,
    required this.location,
    required this.price,
    required this.rate,
    required this.title,
    required this.type,
  });
}
