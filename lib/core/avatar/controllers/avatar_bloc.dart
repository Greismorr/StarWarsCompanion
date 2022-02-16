import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:star_wars_companion/core/avatar/repository/avatar_repository_interface.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';

@injectable
class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final IAvatarRepository _repository;

  AvatarBloc(this._repository) : super(const AvatarState(isLoading: true));

  @override
  Stream<AvatarState> mapEventToState(
    AvatarEvent event,
  ) async* {
    if (event is GetSavedAvatarEvent) {
      yield* _mapGetSavedAvatarToState(event);
    } else if (event is SaveAvatarEvent) {
      yield* _mapSaveAvatarToState(event);
    }
  }

  Stream<AvatarState> _mapGetSavedAvatarToState(
      GetSavedAvatarEvent event) async* {
    yield state.copyWith(isLoading: true);

    yield state.copyWith(
      isLoading: false,
      config: await _repository.getAvatar(),
    );
  }

  Stream<AvatarState> _mapSaveAvatarToState(SaveAvatarEvent event) async* {
    yield state.copyWith(isLoading: true);

    if (await _repository.saveAvatar(event.newAvatar)) {
      yield state.copyWith(config: event.newAvatar);
    }

    yield state.copyWith(isLoading: false);
  }
}
