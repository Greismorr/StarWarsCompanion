// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/avatar/controllers/avatar_bloc.dart' as _i13;
import 'core/avatar/repository/avatar_repository.dart' as _i4;
import 'core/avatar/repository/avatar_repository_interface.dart' as _i3;
import 'core/database_api/database_api_interface.dart' as _i9;
import 'core/database_api/sqflite_api/sqflite_database_api.dart' as _i10;
import 'modules/home/modules/characters/api/character_api/character_api.dart'
    as _i6;
import 'modules/home/modules/characters/api/character_api_interface.dart'
    as _i5;
import 'modules/home/modules/characters/controllers/characters_bloc.dart'
    as _i14;
import 'modules/home/modules/characters/repository/character_repository.dart'
    as _i8;
import 'modules/home/modules/characters/repository/character_repository_interface.dart'
    as _i7;
import 'modules/home/modules/movies/api/movies_api/movies_api.dart' as _i12;
import 'modules/home/modules/movies/api/movies_api_interface.dart' as _i11;
import 'modules/home/modules/movies/controllers/movies_bloc.dart' as _i17;
import 'modules/home/modules/movies/repository/movie_repository.dart' as _i16;
import 'modules/home/modules/movies/repository/movie_repository_interface.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IAvatarRepository>(() => _i4.AvatarRepository());
  gh.factory<_i5.ICharacterApi>(() => _i6.CharacterApi());
  gh.factory<_i7.ICharacterRepository>(
      () => _i8.CharacterRepository(get<_i5.ICharacterApi>()));
  gh.factory<_i9.IDatabaseApi>(() => _i10.SqfliteDatabaseApi());
  gh.factory<_i11.IMoviesApi>(() => _i12.MoviesApi());
  gh.factory<_i13.AvatarBloc>(
      () => _i13.AvatarBloc(get<_i3.IAvatarRepository>()));
  gh.factory<_i14.CharactersBloc>(
      () => _i14.CharactersBloc(get<_i7.ICharacterRepository>()));
  gh.factory<_i15.IMovieRepository>(
      () => _i16.MovieRepository(get<_i11.IMoviesApi>()));
  gh.factory<_i17.MoviesBloc>(
      () => _i17.MoviesBloc(get<_i15.IMovieRepository>()));
  return get;
}
