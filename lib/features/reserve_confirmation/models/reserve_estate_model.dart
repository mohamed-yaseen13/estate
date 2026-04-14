class ReserveEstateModel {
  final String block, location, type, imagePath;
  final bool isSell;

  ReserveEstateModel({
    required this.block,
    required this.imagePath,
    required this.isSell,
    required this.location,
    required this.type,
  });
}
