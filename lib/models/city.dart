class CityModel {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  CityModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isPopular = false,
  });
}
