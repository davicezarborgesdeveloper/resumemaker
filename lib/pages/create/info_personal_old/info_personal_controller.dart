import 'dart:typed_data';

import 'package:mobx/mobx.dart';
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

  @observable
  bool additionalInformationOpen = false;

  @observable
  Uint8List? image;

  @readonly
  String? _urlImage;

  @observable
  String? firstName;

  @observable
  String? surname;

  @observable
  String? email;

  @observable
  String? phone;

  @observable
  String? household;

  @observable
  String? zip;

  @observable
  String? birthdate;

  @observable
  String? birthplace;

  @observable
  String? drivingLicense;

  @observable
  String? sex;

  @observable
  String? nationality;

  @observable
  String? maritalStatus;

  @observable
  String? linkedIn;

  @observable
  String? webSite;

  @action
  void setAdditionalInformationOpen() =>
      additionalInformationOpen = !additionalInformationOpen;

  @action
  void setFirstName(String value) => firstName = value;

  @action
  void setSurname(String value) => surname = value;

  @action
  void setEmail(String value) => email = value;

  void setPhone(String value) => phone = value;

  @computed
  bool get firstNameValid => firstName != null && firstName!.length > 3;
  String? get firstNameError {
    return null;
  }

  @computed
  bool get surnameValid => surname != null && surname!.length > 3;
  String? get surnameError {
    return null;
  }

  @computed
  bool get emailValid => email != null && email!.length > 3;
  String? get emailError {
    return null;
  }

  @computed
  bool get isFormValid => firstNameValid && surnameValid && emailValid;

  @computed
  dynamic get sendPressed => isFormValid ? save : null;

  @action
  Future<void> save() async {}
}
