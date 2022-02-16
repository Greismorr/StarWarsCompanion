part of 'avatar_bloc.dart';

@immutable
abstract class AvatarEvent {}

class GetSavedAvatarEvent extends AvatarEvent {}

class SaveAvatarEvent extends AvatarEvent {
  final String newAvatar;

  SaveAvatarEvent(this.newAvatar);
}
