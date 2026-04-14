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
