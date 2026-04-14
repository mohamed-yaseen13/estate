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

  static final estate = EstateModel(
    rate: '4.9',
    type: 'شقة',
    coverImagePath: 'assets/images/estate_details_image.jpg',
    numberOfImages: 6,
    imagesPath: [
      'assets/images/estate_details_image1.jpg',
      'assets/images/estate_details_image2.jpg',
      'assets/images/estate_details_image3.jpg',
    ],
    block: 'برج البركة',
    location: 'جده , السعوديه',
    price: '310 ريال شهريًا',
    bedRooms: 3,
    bathRooms: 2,
    area: '1880 قدم مربع',
    buildings: 2004,
    garage: '1 داخلي',
    isSell: false,
    desc:
        'شقة مميزة للبيع بموقع حيوي وقريب من جميع الخدمات، تتمتع بتصميم عصري ومساحة واسعة توفر الراحة والخصوصية. تتكون الشقة من عدد مناسب من الغرف المضيئة بفضل الإطلالة الجيدة والنوافذ الكبيرة التي تسمح بدخول الضوء الطبيعي طوال اليوم، بالإضافة إلى صالة استقبال أنيقة، ومطبخ عملي مجهز، وحمام بتشطيبات عالية الجودة. تقع الشقة داخل عمارة حديثة مزودة بمصعد وأمن، مما يجعلها خيارًا مثاليًا للسكن العائلي أو للاستثمار. كما تتميز بقربها من المدارس، والمستشفيات، ووسائل المواصلات، مما يسهل الحياة اليومية ويوفر الوقت والجهد.',
    sellerName: 'محمد ابرهيم',
    sellerJob: 'وكيل عقاري',
    sellerImagePAth: 'assets/images/notification_image2.png',
  );

  static const String lightMapStyle = '''
[
  {"featureType": "all", "elementType": "geometry", "stylers": [{"color": "#f5f5f5"}]},
  {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#e9e9e9"}]},
  {"featureType": "water", "elementType": "labels.text.fill", "stylers": [{"color": "#9e9e9e"}]},
  {"featureType": "road", "elementType": "geometry", "stylers": [{"color": "#ffffff"}]},
  {"featureType": "road.arterial", "elementType": "labels.text.fill", "stylers": [{"color": "#757575"}]},
  {"featureType": "administrative", "elementType": "geometry", "stylers": [{"color": "#e0e0e0"}]},
  {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#eeeeee"}]}
]
''';
}

enum AppNavBarEnum { profile, like, reserve, main }
