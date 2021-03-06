import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/search/search_delegate.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Movies in Cinemas'),
          elevation: 0.0, // without shadow
          actions: [
            IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () => showSearch(
                    context: context, delegate: MovieSearchDelegate()))
          ],
        ),
        // SingleChildScrollView allows scrolling
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Principal Cards
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              // Movies Slider
              MovieSlider(
                popularMovies: moviesProvider.popularMovies,
                title: 'Populars',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ));
  }
}
