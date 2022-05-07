import 'package:mvvm_flutter_stacked/app/router.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mvvm_flutter_stacked/app/router.router.dart';

class HomeViewModel extends BaseViewModel {
  final _NavigationService = locator<NavigationService>();
  String name = 'Kong Hao Yang';
  String matric = 'A19EC0065';
  String get _name => name;
  String get _matric => matric;
  void updateName(String Newname) {
    this.name = Newname;
    notifyListeners();
  }

  void updateMatric(String Newmatric) {
    this.matric = Newmatric;
    notifyListeners();
  }

  void navigateTo() {
    _NavigationService.navigateTo(Routes.secondScreen);
  }

  void navigateToNews() {
    _NavigationService.navigateTo(Routes.news);
  }
}
