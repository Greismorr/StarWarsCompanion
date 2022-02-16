import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars_companion/core/models/item_types.dart';
import 'package:star_wars_companion/injection.dart';
import 'package:star_wars_companion/modules/home/modules/widgets/character_widget/character_widget.dart';
import 'package:star_wars_companion/modules/home/modules/widgets/list_widget/list_widget.dart';
import 'controllers/characters_bloc.dart';
import 'widgets/loading_list_tile/loading_list_tile.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  _CharactersListState createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<CharactersBloc>(
      create: (context) => getIt<CharactersBloc>()
        ..add(
          FetchCharactersDataEvent(),
        ),
      child: Builder(
        builder: (context) {
          return BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              return ListWidget(
                isLoading: state.isLoading,
                list: state.characters,
                type: ItemType.character,
                listView: ListView.builder(
                  itemCount: state.isLastPage
                      ? state.characters!.length
                      : state.characters!.length + 1,
                  itemBuilder: (context, index) {
                    return CharacterWidget(
                      character: state.characters![index],
                    );
                  },
                ),
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
