import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static final String theMovieDbKey =
      dotenv.env['THE_MOVIE_DB_KEY'] ?? 'THE_MOVIE_DB_KEY not found!';
}
