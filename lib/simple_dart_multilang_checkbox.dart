import 'package:simple_dart_checkbox/simple_dart_checkbox.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';

class MultilangCheckbox extends Checkbox {
  String _langKey = '';

  set langKey(String value) {
    _langKey = value;
    reRender();
  }

  String get langKey => _langKey;

  @override
  void reRender() {
    if (langKey.isNotEmpty) {
      caption = multilangController.translate(_langKey);
    }
  }
}
