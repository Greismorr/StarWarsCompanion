abstract class IAvatarRepository {
  Future<bool> saveAvatar(String newAvatar);

  Future<String?> getAvatar();
}
