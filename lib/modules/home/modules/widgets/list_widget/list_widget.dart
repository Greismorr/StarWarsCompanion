import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_background_decoration.dart';
import 'package:star_wars_companion/core/models/item_types.dart';
import 'package:star_wars_companion/core/widgets/error_widget/error_widget.dart';
import 'package:star_wars_companion/core/widgets/loading_widget/loading_widget.dart';
import 'package:star_wars_companion/modules/home/modules/widgets/character_widget/character_widget.dart';
import 'package:star_wars_companion/modules/home/modules/widgets/movie_widget/movie_widget.dart';

class ListWidget extends StatelessWidget {
  final bool isLoading;
  final List<dynamic>? list;
  final ItemType type;
  final ListView? listView;

  const ListWidget({
    Key? key,
    required this.isLoading,
    required this.list,
    required this.type,
    this.listView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const LoadingWidget();
    } else if (list!.isEmpty) {
      return const ErrorTextWidget();
    }

    return Container(
      decoration: AppBackgroundDecoration.listBackgroundDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 8.0,
        ),
        child: type == ItemType.movie
            ? listView ??
                ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 5,
                  ),
                  itemCount: list!.length,
                  itemBuilder: (context, index) {
                    return MovieWidget(
                      movie: list![index],
                    );
                  },
                )
            : listView ??
                ListView.builder(
                  itemCount: list!.length,
                  itemBuilder: (context, index) {
                    return CharacterWidget(
                      character: list![index],
                    );
                  },
                ),
      ),
    );
  }
}
