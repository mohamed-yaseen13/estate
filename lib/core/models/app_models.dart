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

class NotificationModel {
  final String desc, iconPath;
  final bool isRead, isIcon;

  NotificationModel({
    required this.desc,
    required this.iconPath,
    required this.isRead,
    required this.isIcon,
  });
}

class NotificationGroubModel {
  final String date;
  final List<NotificationModel> notifications;

  NotificationGroubModel({required this.date, required this.notifications});
}

class EstateModel {
  final String rate,
      type,
      coverImagePath,
      price,
      location,
      block,
      area,
      garage,
      desc,
      sellerName,
      sellerJob,
      sellerImagePAth;
  final List<String> imagesPath;
  final int numberOfImages, bedRooms, bathRooms, buildings;
  final bool isSell;

  EstateModel({
    required this.area,
    required this.bedRooms,
    required this.block,
    required this.buildings,
    required this.coverImagePath,
    required this.desc,
    required this.garage,
    required this.imagesPath,
    required this.isSell,
    required this.location,
    required this.numberOfImages,
    required this.bathRooms,
    required this.price,
    required this.rate,
    required this.sellerJob,
    required this.sellerName,
    required this.type,
    required this.sellerImagePAth,
  });
}
