import 'package:portfolio/app/configs.dart';
import 'package:portfolio/core/services/url_launcher_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final UrlLauncherService _urlLauncherService = UrlLauncherService();
  bool isIntroCompleted = false;
  bool isHoveredOnGetInTouch = false;
  bool isShortIntroCompleted = false;

  changeShortIntroToCompleted() {
    isShortIntroCompleted = true;
    notifyListeners();
  }

  changeHoveredBoolean(bool value) {
    isHoveredOnGetInTouch = value;
    notifyListeners();
  }

  changeIntroToCompleted() {
    isIntroCompleted = true;
    notifyListeners();
  }

  getInTouch() async {
    await _urlLauncherService.launchUrl(SocialLinks.linkedinUrl);
  }
}
