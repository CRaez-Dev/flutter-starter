import 'package:cinemapedia/ui/providers/providers.dart';
import 'package:cinemapedia/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const String name = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final moviesSlide = ref.watch(moviesSlideShowProvider);

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(0),
            title: CustomAppbar(),
          ),
        ),
        
        SliverList(
          
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return Column(
                children: [
                  const SizedBox(height: 8,),
                  if (moviesSlide.isEmpty)
                    const CircularProgressIndicator()
                  else if (moviesSlide.isNotEmpty)
                    MoviesSlideShow(
                      movies: moviesSlide,
                    ),
                  MovieHorizontalListView(
                    movies: nowPlayingMovies,
                    title: "En cines",
                    subTitle: "Lunes 20",
                    loadNextPage: () => ref
                        .read(nowPlayingMoviesProvider.notifier)
                        .loadNextPage(),
                  ),
                  MovieHorizontalListView(
                    movies: nowPlayingMovies,
                    title: "Soon",
                    subTitle: "Next month",
                    loadNextPage: () => ref
                        .read(nowPlayingMoviesProvider.notifier)
                        .loadNextPage(),
                  ),
                  MovieHorizontalListView(
                    movies: nowPlayingMovies,
                    title: "Trending",
                    loadNextPage: () => ref
                        .read(nowPlayingMoviesProvider.notifier)
                        .loadNextPage(),
                  ),
                  MovieHorizontalListView(
                    movies: nowPlayingMovies,
                    title: "The bests",
                    subTitle: "Ever",
                    loadNextPage: () => ref
                        .read(nowPlayingMoviesProvider.notifier)
                        .loadNextPage(),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
