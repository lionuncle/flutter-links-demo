import 'package:hive/hive.dart';
part 'social_media_link_model.g.dart';

@HiveType(typeId: 0)
class SocialMediaLink extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String link;

  @HiveField(2)
  String? customTitle;

  SocialMediaLink({required this.title, required this.link, String? customTitle});
}