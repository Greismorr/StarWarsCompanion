import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/avatar/repository/avatar_repository_interface.dart';

@Injectable(as: IAvatarRepository)
class AvatarRepository implements IAvatarRepository {
  AvatarRepository();

  @override
  Future<String?> getAvatar() async {
    return null;
  }

  @override
  Future<bool> saveAvatar(String newAvatar) {
    // TODO: implement saveAvatar
    throw UnimplementedError();
  }
}
