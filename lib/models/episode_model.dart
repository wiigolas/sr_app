class Episode {
  final String audio;
  final int id;
  final String image;
  final String title;

  Episode({
    required this.audio,
    required this.id,
    required this.image,
    required this.title,
  });

  static Episode fromMap(Map<String, dynamic> map) {
    return Episode(
      audio: map['listenpodfile']['url'],
      id: map['id'],
      image: map['imageurl'],
      title: map['listenpodfile']['title'],
    );
  }
}
