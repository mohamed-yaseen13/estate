class EstateDetailsModel {
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

  EstateDetailsModel({
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
