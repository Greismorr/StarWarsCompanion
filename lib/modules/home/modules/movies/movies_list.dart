import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars_companion/core/models/item_types.dart';
import 'package:star_wars_companion/injection.dart';
import 'package:star_wars_companion/modules/home/modules/movies/controllers/movies_bloc.dart';
import 'package:star_wars_companion/modules/home/modules/widgets/list_widget/list_widget.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<MoviesBloc>(
      create: (context) => getIt<MoviesBloc>()..add(FetchMoviesDataEvent()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<MoviesBloc, MoviesState>(
            builder: (context, state) {
              return ListWidget(
                isLoading: state.isLoading,
                list: state.movies,
                type: ItemType.movie,
              );
            },
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
