import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_from_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieFromMovieDb movieDb) {
    return Movie(
        adult: movieDb.adult,
        backdropPath: (movieDb.backdropPath == '')
            ? 'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png'
            : '${Environment.theMovieDbImageUrl}${movieDb.backdropPath}',
        genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: (movieDb.posterPath == '')
            ? 'no-poster'
            : '${Environment.theMovieDbImageUrl}${movieDb.posterPath}',
        releaseDate: movieDb.releaseDate,
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount);
  }
}
