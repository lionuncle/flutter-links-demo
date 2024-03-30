import 'package:flutter_link_feature_app/data/repo/remote_data/remote_repo.dart';
import 'package:get/get.dart';

class UrlDetailController extends GetxController {
  var hostDomain = ''.obs;
  var hostTitle = ''.obs;
  var hostDomain1 = ''.obs;
  var hostTitle1 = ''.obs;
  var hostDomain2 = ''.obs;
  var hostTitle2 = ''.obs;

  void getUrlDetail({required String url, required int i}) async {
    if (i == 0) {
      hostDomain.value = RemoteRepository.extractDomain(url);
      hostTitle.value = await RemoteRepository.fetchTitle(url) ?? '';
    } else if (i == 1) {
      hostDomain1.value = RemoteRepository.extractDomain(url);
      hostTitle1.value = await RemoteRepository.fetchTitle(url) ?? '';
    } else {
      hostDomain2.value = RemoteRepository.extractDomain(url);
      hostTitle2.value = await RemoteRepository.fetchTitle(url) ?? '';
    }
  }
}
