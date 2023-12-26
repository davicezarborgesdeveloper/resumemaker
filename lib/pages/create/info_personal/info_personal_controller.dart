import 'dart:typed_data';

import 'package:mobx/mobx.dart';

import '../../../app/core/ui/helpers/enums.dart';
part 'info_personal_controller.g.dart';

enum InfoPersonalStateStatus {
  initial,
  loading,
  success,
  error,
}

class InfoPersonalController = InfoPersonalControllerBase
    with _$InfoPersonalController;

abstract class InfoPersonalControllerBase with Store {
  @readonly
  var _status = InfoPersonalStateStatus.initial;

  @readonly
  String? _errorMessage;

  @readonly
  bool _showErrors = false;

  @readonly
  bool _showInfos = false;

  @observable
  Language language = Language.portugues;

  @readonly
  Uint8List? _image;

  @observable
  String? firstName;

  @observable
  String? surname;

  @observable
  String? email;

  @observable
  String? phone;

  @observable
  String? address;

  @observable
  String? zipCode;

  @observable
  String? cityLocale;

  @action
  void changeShowInfos() => _showInfos = !_showInfos;

  @action
  void setLanguage(Language value) => language = value;

  @action
  void setFirstName(String value) => firstName = value;

  @action
  void setSurname(String value) => surname = value;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPhone(String value) => email = value;

  @action
  void setAddress(String value) => address = value;

  @action
  void setZipCode(String value) => zipCode = value;

  @action
  void setCityLocale(String value) => cityLocale = value;

  @action
  Future<void> saveImage(Uint8List imageUint) async {
    _status = InfoPersonalStateStatus.loading;
    _image = imageUint;
    _status = InfoPersonalStateStatus.success;
  }

  @action
  Future<void> deleteImage() async {
    _status = InfoPersonalStateStatus.loading;
    _image = null;
    _status = InfoPersonalStateStatus.success;
  }

  @computed
  bool get firstNameValid => firstName != null && firstName!.length > 3;
  String? get firstNameError {
    if (!_showErrors || firstNameValid) {
      return null;
    } else if (firstName == null || firstName!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Campo muito curto';
    }
  }

  @computed
  bool get surnameValid => surname != null && surname!.length > 3;
  String? get surnameError {
    if (!_showErrors || surnameValid) {
      return null;
    } else if (surname == null || surname!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Campo muito curto';
    }
  }

  @computed
  bool get emailValid => email != null && email!.length > 3;
  String? get emailError {
    if (!_showErrors || emailValid) {
      return null;
    } else if (email == null || email!.isEmpty) {
      return 'Campo Obrigatório';
    } else {
      return 'Campo muito curto';
    }
  }

  @computed
  bool get addressValid => address != null && address!.isEmpty;
  String? get addressError {
    if (!_showErrors || addressValid) {
      return null;
    } else if (address == null || address!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Campo muito curto';
    }
  }

  @action
  void invalidSendPressed() => _showErrors = true;

  @computed
  bool get isFormValid => firstNameValid && surnameValid;

  @computed
  dynamic get sendPressed => isFormValid ? save : null;

  @action
  Future<void> save() async {}
}
