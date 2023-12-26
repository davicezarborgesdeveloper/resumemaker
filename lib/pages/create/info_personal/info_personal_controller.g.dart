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
  Computed<bool>? _$addressValidComputed;

  @override
  bool get addressValid =>
      (_$addressValidComputed ??= Computed<bool>(() => super.addressValid,
              name: 'InfoPersonalControllerBase.addressValid'))
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

  late final _$_showInfosAtom =
      Atom(name: 'InfoPersonalControllerBase._showInfos', context: context);

  bool get showInfos {
    _$_showInfosAtom.reportRead();
    return super._showInfos;
  }

  @override
  bool get _showInfos => showInfos;

  @override
  set _showInfos(bool value) {
    _$_showInfosAtom.reportWrite(value, super._showInfos, () {
      super._showInfos = value;
    });
  }

  late final _$languageAtom =
      Atom(name: 'InfoPersonalControllerBase.language', context: context);

  @override
  Language get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(Language value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  late final _$_imageAtom =
      Atom(name: 'InfoPersonalControllerBase._image', context: context);

  Uint8List? get image {
    _$_imageAtom.reportRead();
    return super._image;
  }

  @override
  Uint8List? get _image => image;

  @override
  set _image(Uint8List? value) {
    _$_imageAtom.reportWrite(value, super._image, () {
      super._image = value;
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

  late final _$addressAtom =
      Atom(name: 'InfoPersonalControllerBase.address', context: context);

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$zipCodeAtom =
      Atom(name: 'InfoPersonalControllerBase.zipCode', context: context);

  @override
  String? get zipCode {
    _$zipCodeAtom.reportRead();
    return super.zipCode;
  }

  @override
  set zipCode(String? value) {
    _$zipCodeAtom.reportWrite(value, super.zipCode, () {
      super.zipCode = value;
    });
  }

  late final _$cityLocaleAtom =
      Atom(name: 'InfoPersonalControllerBase.cityLocale', context: context);

  @override
  String? get cityLocale {
    _$cityLocaleAtom.reportRead();
    return super.cityLocale;
  }

  @override
  set cityLocale(String? value) {
    _$cityLocaleAtom.reportWrite(value, super.cityLocale, () {
      super.cityLocale = value;
    });
  }

  late final _$saveImageAsyncAction =
      AsyncAction('InfoPersonalControllerBase.saveImage', context: context);

  @override
  Future<void> saveImage(Uint8List imageUint) {
    return _$saveImageAsyncAction.run(() => super.saveImage(imageUint));
  }

  late final _$deleteImageAsyncAction =
      AsyncAction('InfoPersonalControllerBase.deleteImage', context: context);

  @override
  Future<void> deleteImage() {
    return _$deleteImageAsyncAction.run(() => super.deleteImage());
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
  void changeShowInfos() {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.changeShowInfos');
    try {
      return super.changeShowInfos();
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLanguage(Language value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setLanguage');
    try {
      return super.setLanguage(value);
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
  void setPhone(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setAddress');
    try {
      return super.setAddress(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setZipCode(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setZipCode');
    try {
      return super.setZipCode(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCityLocale(String value) {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.setCityLocale');
    try {
      return super.setCityLocale(value);
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$InfoPersonalControllerBaseActionController
        .startAction(name: 'InfoPersonalControllerBase.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$InfoPersonalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
language: ${language},
firstName: ${firstName},
surname: ${surname},
email: ${email},
phone: ${phone},
address: ${address},
zipCode: ${zipCode},
cityLocale: ${cityLocale},
firstNameValid: ${firstNameValid},
surnameValid: ${surnameValid},
emailValid: ${emailValid},
addressValid: ${addressValid},
isFormValid: ${isFormValid},
sendPressed: ${sendPressed}
    ''';
  }
}
