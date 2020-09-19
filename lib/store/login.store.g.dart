// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$emailAtom = Atom(name: '_LoginStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginStore.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordShowAtom = Atom(name: '_LoginStore.passwordShow');

  @override
  bool get passwordShow {
    _$passwordShowAtom.reportRead();
    return super.passwordShow;
  }

  @override
  set passwordShow(bool value) {
    _$passwordShowAtom.reportWrite(value, super.passwordShow, () {
      super.passwordShow = value;
    });
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePassword() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.togglePassword');
    try {
      return super.togglePassword();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassWord(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setPassWord');
    try {
      return super.setPassWord(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
passwordShow: ${passwordShow}
    ''';
  }
}
