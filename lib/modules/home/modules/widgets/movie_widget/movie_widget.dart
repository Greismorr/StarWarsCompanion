import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_assets.dart';
import 'package:star_wars_companion/app/theme/app_colors.dart';
import 'package:star_wars_companion/app/theme/app_text_styles.dart';
import 'package:star_wars_companion/core/models/movie.dart';

class MovieWidget extends StatelessWidget {
  final Movie movie;

  const MovieWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.movieHighlightColor),
          color: Colors.white),
      child: Card(
        margin: EdgeInsets.zero,
        child: ListTile(
          isThreeLine: true,
          leading: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 84,
              minHeight: 56,
              maxWidth: 84,
              maxHeight: 56,
            ),
            child: CachedNetworkImage(
              imageUrl: AppAssets.moviesImageMap[movie.title] ??
                  AppAssets.placeholderImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                value: downloadProgress.progress,
                strokeWidth: 1.0,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
          title: Align(
            alignment: Alignment.topLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: AppTextStyles.textRegular,
                    ),
                    Text(
                      movie.releaseDate,
                      style: AppTextStyles.textSubtitleRegular,
                    ),
                  ],
                ),
              ),
            ),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.accentColor,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  child: Text(
                    movie.director,
                    style: AppTextStyles.textHighlightRegular,
                  ),
                ),
              ),
              Text(
                movie.producer,
                style: AppTextStyles.textRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
