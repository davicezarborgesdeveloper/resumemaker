// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_personal_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InfoPersonalController on InfoPersonalControllerBase, Store {
  Computed<bool>? _$firstNameValidComputed;

  @override
  bool get firstNameValid =>
      (_$firstNameValidComputed ??= Computed<bool>(() => super.firstNameValid,
              name: 'InfoPersonalControllerBase.firstNameValid'))
          .value;
  Computed<bool>? _$surnameValidComputed;

  @override
  bool get surnameValid =>
      (_$surnameValidComputed ??= Computed<bool>(() => super.surnameValid,
              name: 'InfoPersonalControllerBase.surnameValid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: 'InfoPersonalControllerBase.emailValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'InfoPersonalControllerBase.isFormValid'))
          .value;
  Computed<dynamic>? _$sendPressedComputed;

  @override
  dynamic get sendPressed =>
      (_$sendPressedComputed ??= Computed<dynamic>(() => super.sendPressed,
              name: 'InfoPersonalControllerBase.sendPressed'))
          .value;

  late final _$_statusAtom =
      Atom(name: 'InfoPersonalControllerBase._status', context: context);

  InfoPersonalStateStatus get status {
    _$_statusAtom.reportRead();
    return super._status;
  }

  @override
  InfoPersonalStateStatus get _status => status;

  @override
  set _status(InfoPersonalStateStatus value) {
    _$_statusAtom.reportWrite(value, super._status, () {
      super._status = value;
    });
  }

  late final _$_errorMessageAtom =
      Atom(name: 'InfoPersonalControllerBase._errorMessage', context: context);

  String? get errorMessage {
    _$_errorMessageAtom.reportRead();
    return super._errorMessage;
  }

  @override
  String? get _errorMessage => errorMessage;

  @override
  set _errorMessage(String? value) {
    _$_errorMessageAtom.reportWrite(value, super._errorMessage, () {
      super._errorMessage = value;
    });
  }

  late final _$_showErrorsAtom =
      Atom(name: 'InfoPersonalControllerBase._showErrors', context: context);

  bool get showErrors {
    _$_showErrorsAtom.reportRead();
    return super._showErrors;
  }

  @override
  bool get _showErrors => showErrors;

  @override
  set _showErrors(bool value) {
    _$_showErrorsAtom.reportWrite(value, super._showErrors, () {
      super._showErrors = value;
    });
  }

  late final _$additionalInformationOpenAtom = Atom(
      name: 'InfoPersonalControllerBase.additionalInformationOpen',
      context: context);

  @override
  bool get additionalInformationOpen {
    _$additionalInformationOpenAtom.reportRead();
    return super.additionalInformationOpen;
  }

  @override
  set additionalInformationOpen(bool value) {
    _$additionalInformationOpenAtom
        .reportWrite(value, super.additionalInformationOpen, () {
      super.additionalInformationOpen = value;
    });
  }

  late final _$firstNameAtom =
      Atom(name: 'InfoPersonalControllerBase.firstName', context: context);

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$surnameAtom =
      Atom(name: 'InfoPersonalControllerBase.surname', context: context);

  @override
  String? get surname {
    _$surnameAtom.reportRead();
    return super.surname;
  }

  @override
  set surname(String? value) {
    _$surnameAtom.reportWrite(value, super.surname, () {
      super.surname = value;
    });
  }

  late final _$emailAtom =
      Atom(name: 'InfoPersonalControllerBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$phoneAtom =
      Atom(name: 'InfoPersonalControllerBase.phone', context: context);

  @override
  String? get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String? value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  late final _$householdAtom =
      Atom(name: 'InfoPersonalControllerBase.household', context: context);

  @override
  String? get household {
    _$householdAtom.reportRead();
    return super.household;
  }

  @override
  set household(String? value) {
    _$householdAtom.reportWrite(value, super.household, () {
      super.household = value;
    });
  }

  late final _$zipAtom =
      Atom(name: 'InfoPersonalControllerBase.zip', context: context);

  @override
  String? get zip {
    _$zipAtom.reportRead();
    return super.zip;
  }

  @override
  set zip(String? value) {
    _$zipAtom.reportWrite(value, super.zip, () {
      super.zip = value;
    });
  }

  late final _$birthdateAtom =
      Atom(name: 'InfoPersonalControllerBase.birthdate', context: context);

  @override
  String? get birthdate {
    _$birthdateAtom.reportRead();
    return super.birthdate;
  }

  @override
  set birthdate(String? value) {
    _$birthdateAtom.reportWrite(value, super.birthdate, () {
      super.birthdate = value;
    });
  }

  late final _$birthplaceAtom =
      Atom(name: 'InfoPersonalControllerBase.birthplace', context: context);

  @override
  String? get birthplace {
    _$birthplaceAtom.reportRead();
    return super.birthplace;
  }

  @override
  set birthplace(String? value) {
    _$birthplaceAtom.reportWrite(value, super.birthplace, () {
      super.birthplace = value;
    });
  }

  late final _$drivingLicenseAtom =
      Atom(name: 'InfoPersonalControllerBase.drivingLicense', context: context);

  @override
  String? get drivingLicense {
    _$drivingLicenseAtom.reportRead();
    return super.drivingLicense;
  }

  @override
  set drivingLicense(String? value) {
    _$drivingLicenseAtom.reportWrite(value, super.drivingLicense, () {
      super.drivingLicense = value;
    });
  }

  late final _$sexAtom =
      Atom(name: 'InfoPersonalControllerBase.sex', context: context);

  @override
  String? get sex {
    _$sexAtom.reportRead();
    return super.sex;
  }

  @override
  set sex(String? value) {
    _$sexAtom.reportWrite(value, super.sex, () {
      super.sex = value;
    });
  }

  late final _$nationalityAtom =
      Atom(name: 'InfoPersonalControllerBase.nationality', context: context);

  @override
  String? get nationality {
    _$nationalityAtom.reportRead();
    return super.nationality;
  }

  @override
  set nationality(String? value) {
    _$nationalityAtom.reportWrite(value, super.nationality, () {
      super.nationality = value;
    });
  }

  late final _$maritalStatusAtom =
      Atom(name: 'InfoPersonalControllerBase.maritalStatus', context: context);

  @override
  String? get maritalStatus {
    _$maritalStatusAtom.reportRead();
    return super.maritalStatus;
  }

  @override
  set maritalStatus(String? value) {
    _$maritalStatusAtom.reportWrite(value, super.maritalStatus, () {
      super.maritalStatus = value;
    });
  }

  late final _$linkedInAtom =
      Atom(name: 'InfoPersonalControllerBase.linkedIn', context: context);

  @override
  String? get linkedIn {
    _$linkedInAtom.reportRead();
    return super.linkedIn;
  }

  @override
  set linkedIn(String? value) {
    _$linkedInAtom.reportWrite(value, super.linkedIn, () {
      super.linkedIn = value;
    });
  }

  late final _$webSiteAtom =
      Atom(name: 'InfoPersonalControllerBase.webSite', context: context);

  @override
  String? get webSite {
    _$webSiteAtom.reportRead();
    return super.webSite;
  }

  @override
  set webSite(String? value) {
    _$webSiteAtom.reportWrite(value, super.webSite, () {
      super.webSite = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('InfoPersonalControllerBase.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$InfoPersonalControllerBaseActionController =
      ActionController(name: 'InfoPersonalControllerBase', context: context);

  @override
  void setAdditionalInformationOpen() {
    final _$actionInfo =
        _$InfoPersonalControllerBaseActionController.startAction(
            name: 'InfoPersonalControllerBase.setAdditionalInformationOpen');
    try {
      return super.setAdditionalInformationOpen();
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setFirstName');
    try {
      return super.setFirstName(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSurname(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setSurname');
    try {
      return super.setSurname(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
additionalInformationOpen: ${additionalInformationOpen},
firstName: ${firstName},
surname: ${surname},
email: ${email},
phone: ${phone},
household: ${household},
zip: ${zip},
birthdate: ${birthdate},
birthplace: ${birthplace},
drivingLicense: ${drivingLicense},
sex: ${sex},
nationality: ${nationality},
maritalStatus: ${maritalStatus},
linkedIn: ${linkedIn},
webSite: ${webSite},
firstNameValid: ${firstNameValid},
surnameValid: ${surnameValid},
emailValid: ${emailValid},
isFormValid: ${isFormValid},
sendPressed: ${sendPressed}
    ''';
  }
}
