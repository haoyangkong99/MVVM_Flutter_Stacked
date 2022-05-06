import 'package:stacked/stacked.dart';

class SecondViewModel extends BaseViewModel {
  String x = 'Kong Hao Yang';
  String y = 'A19EC0065';
  String get _name => x;
  String get _matric => y;
  void updateName(String Newname) {
    this.x = Newname;
    notifyListeners();
  }

  void updateMatric(String Newmatric) {
    this.y = Newmatric;
    notifyListeners();
  }
}
