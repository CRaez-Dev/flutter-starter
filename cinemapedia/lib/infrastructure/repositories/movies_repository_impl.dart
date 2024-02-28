import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl extends MoviesRepository {
  final MoviesDataSource datasource;
  MoviesRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) =>
      datasource.getNowPlaying(page: page);

  @override
  Future<List<Movie>> getTrending({int page = 1}) =>
      datasource.getTrending(page: page);

  @override
  Future<List<Movie>> getTopRated({int page = 1}) =>
      datasource.getTopRated(page: page);

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) =>
      datasource.getUpcoming(page: page);

  @override
  Future<Movie> getMovieById(String id) => datasource.getMovieById(id);
}
