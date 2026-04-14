import 'package:estate/core/models/app_models.dart';

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

  static final List<NotificationGroubModel> notificationsGroub = [
    NotificationGroubModel(
      date: 'اليوم',
      notifications: [
        NotificationModel(
          desc: 'تهانينا، تم تفعيل إعلانك الآن. انقر هنا لعرض إعلانك.',
          iconPath: 'assets/icons/notification_icon1.svg',
          isRead: true,
          isIcon: true,
        ),
        NotificationModel(
          desc: 'أهلاً وسهلاً، لا تنسَ إكمال معلوماتك الشخصية',
          iconPath: 'assets/icons/notification_icon1.svg',
          isRead: true,
          isIcon: true,
        ),
      ],
    ),
    NotificationGroubModel(
      date: 'أمس',
      notifications: [
        NotificationModel(
          desc: 'محمد عبدالله ارسل لك رسالة، تحقق منها الآن',
          iconPath: 'assets/images/notification_image1.png',
          isRead: false,
          isIcon: false,
        ),
        NotificationModel(
          desc: 'أهلاً وسهلاً، لا تنسَ إكمال معلوماتك الشخصية',
          iconPath: 'assets/icons/notification_icon1.svg',
          isRead: true,
          isIcon: true,
        ),
        NotificationModel(
          desc: 'أهلاً وسهلاً، لا تنسَ إكمال معلوماتك الشخصية',
          iconPath: 'assets/icons/notification_icon1.svg',
          isRead: true,
          isIcon: true,
        ),
        NotificationModel(
          desc: 'محمد عبدالله ارسل لك رسالة، تحقق منها الآن',
          iconPath: 'assets/images/notification_image2.png',
          isRead: false,
          isIcon: false,
        ),
        NotificationModel(
          desc: 'أهلاً وسهلاً، لا تنسَ إكمال معلوماتك الشخصية',
          iconPath: 'assets/icons/notification_icon2.svg',
          isRead: true,
          isIcon: true,
        ),
      ],
    ),
  ];
}

enum AppNavBarEnum { profile, like, reserve, main }
