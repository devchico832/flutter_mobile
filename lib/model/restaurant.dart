class Restaurant {
  String id;
  String imagePath;
  String Name;
  String description;
  double stars;
  int distance;
  List<String> categories;

  Restaurant({
    required this.id,
    required this.imagePath,
    required this.Name,
    required this.description,
    required this.stars,
    required this.distance,
    required this.categories,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imagePath': imagePath,
      'Name': Name,
      'description': description,
      'stars': stars,
      'distance': distance,
      'categories': categories,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      id: map['id'],
      imagePath: map['imagePath'],
      Name: map['Name'],
      description: map['description'],
      stars: map['stars'],
      distance: map['distance'],
      categories: List<String>.from(map['categories']),
    );
  }

  @override
  String toString() {
    return 'Restaurant(id: $id, imagePath: $imagePath, Name: $Name, description: $description, stars: $stars, distance: $distance, categories: $categories)';
  }
}
