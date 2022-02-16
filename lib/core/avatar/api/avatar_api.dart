abstract class IAvatarApi {
  Future<String?> getAvatar();

  Future<bool> saveAvatar(String avatarConfig);
}
