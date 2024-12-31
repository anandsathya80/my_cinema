class Movie {
  final int id;
  final String title;
  final int year;
  final List<String> genre;
  // final double rating;
  final String director;
  final List<String> actors;
  final String plot;
  final String poster;
  final String trailer;
  final int runtime;
  final String awards;
  final String country;
  final String language;
  final String boxOffice;
  final String production;
  final String website;

  Movie({
    required this.id,
    required this.title,
    required this.year,
    required this.genre,
    // required this.rating,
    required this.director,
    required this.actors,
    required this.plot,
    required this.poster,
    required this.trailer,
    required this.runtime,
    required this.awards,
    required this.country,
    required this.language,
    required this.boxOffice,
    required this.production,
    required this.website,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      year: json['year'],
      genre: List<String>.from(json['genre']),
      // rating: json['rating'],
      director: json['director'],
      actors: List<String>.from(json['actors']),
      plot: json['plot'],
      poster: json['poster'],
      trailer: json['trailer'],
      runtime: json['runtime'],
      awards: json['awards'],
      country: json['country'],
      language: json['language'],
      boxOffice: json['boxOffice'],
      production: json['production'],
      website: json['website'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'year': year,
      'genre': genre,
      // 'rating': rating,
      'director': director,
      'actors': actors,
      'plot': plot,
      'poster': poster,
      'trailer': trailer,
      'runtime': runtime,
      'awards': awards,
      'country': country,
      'language': language,
      'boxOffice': boxOffice,
      'production': production,
      'website': website,
    };
  }
}
