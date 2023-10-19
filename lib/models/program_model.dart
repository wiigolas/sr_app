class Program {
  final String description;
  final int id;
  final String image;

  Program({
    required this.description,
    required this.id,
    required this.image,
  });

  static Program fromMap(Map<String, dynamic> map) {
    return Program(
      description: map['description'],
      id: map['id'],
      image: map['programimage'],
    );
  }
}
