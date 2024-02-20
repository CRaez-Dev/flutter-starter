import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static final String theMovieDbKey =
      dotenv.env['THE_MOVIE_DB_KEY'] ?? 'THE_MOVIE_DB_KEY not found!';
  static final String theMovieDbBaseUrl =
      dotenv.env['THE_MOVIE_DB_BASE_URL'] ?? 'THE_MOVIE_DB_BASE_URL not found!';

  static final String theMovieDbImageUrl =
      dotenv.env['THE_MOVIE_DB_IMAGE_URL'] ??
          'THE_MOVIE_DB_IMAGE_URL not found!';
}
