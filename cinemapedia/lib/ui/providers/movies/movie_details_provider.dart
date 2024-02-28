import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/ui/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Defining a type function
typedef GetMovieCallback = Future<Movie> Function(String movieId);

// Notifier
class MovieMapNotifier extends StateNotifier<Map<String, Movie>> {
  final GetMovieCallback getMovie;

  MovieMapNotifier({required this.getMovie}) : super({});

  Future<void> loadMovie(String movieId) async {
    if (state[movieId] != null) return;

    final movie = await getMovie(movieId);

    state = {...state, movieId: movie};
  }
}

// Provider

final movieInfoProvider = StateNotifierProvider<MovieMapNotifier,Map<String, Movie>>((ref) {
  final movieRepository = ref.watch(moviesRepositoryProvider).getMovieById;
  return MovieMapNotifier(getMovie: movieRepository);
});