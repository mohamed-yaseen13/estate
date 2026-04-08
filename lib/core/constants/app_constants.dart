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

  static final List<TopLocationModel> topLocations = [
    TopLocationModel(imagePath: 'assets/images/location1.jpg', name: 'جده'),
    TopLocationModel(imagePath: 'assets/images/location2.jpg', name: 'الرياض'),
    TopLocationModel(imagePath: 'assets/images/location3.jpg', name: 'ابو ظبي'),
    TopLocationModel(imagePath: 'assets/images/location4.jpg', name: 'الدمام'),
  ];

  static final List<ExploreEstateModel> exploreEstates = [
    ExploreEstateModel(
      imagePath: 'assets/images/explore_estate1.jpg',
      location: 'جده، السعوديه',
      price: '220 ريال',
      rate: '4.9',
      title: 'برج البركه',
      type: 'ايجار',
    ),
    ExploreEstateModel(
      imagePath: 'assets/images/explore_estate2.jpg',
      location: 'جده، السعوديه',
      price: '271 ريال',
      rate: '4.9',
      title: 'برج الفردوس ',
      type: 'ايجار',
    ),
    ExploreEstateModel(
      imagePath: 'assets/images/explore_estate3.jpg',
      location: 'جده، السعوديه',
      price: '235 ريال',
      rate: '4.7',
      title: 'برج الفردوس ',
      type: 'بيع',
    ),
    ExploreEstateModel(
      imagePath: 'assets/images/explore_estate4.jpg',
      location: 'جده، السعوديه',
      price: '235 ريال',
      rate: '4.7',
      title: 'برج الفردوس ',
      type: 'بيع',
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

class TopLocationModel {
  String imagePath, name;

  TopLocationModel({required this.imagePath, required this.name});
}

class ExploreEstateModel {
  final String imagePath, price, type, title, location, rate;

  ExploreEstateModel({
    required this.imagePath,
    required this.location,
    required this.price,
    required this.rate,
    required this.title,
    required this.type,
  });
}

enum AppNavBarEnum { profile, like, reserve, main }
