class Hotel {
  final String name;
  final String city;
  final double price;
  final String imageUrl;
  final String image1;
  final String image2;
  final String image3;
  final String description;
  final String rate;
  final String aboutUs;
  bool isFavorite;

  Hotel({
    required this.name,
    required this.city,
    required this.price,
    required this.imageUrl,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.description,
    required this.rate,
    required this.aboutUs,
    this.isFavorite = false,
  });
}
