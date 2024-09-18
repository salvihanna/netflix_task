class Movie {
  final String title;
  final String posterPath;
  final String releaseDate; // Add release date

  Movie({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'], // Parse release date from JSON
    );
  }
}
