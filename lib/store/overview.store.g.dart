// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OverviewStore on _OverviewStore, Store {
  final _$transactionAtom = Atom(name: '_OverviewStore.transaction');

  @override
  ObservableList<OverViewModel> get transaction {
    _$transactionAtom.reportRead();
    return super.transaction;
  }

  @override
  set transaction(ObservableList<OverViewModel> value) {
    _$transactionAtom.reportWrite(value, super.transaction, () {
      super.transaction = value;
    });
  }

  final _$listOverviewAsyncAction = AsyncAction('_OverviewStore.listOverview');

  @override
  Future listOverview() {
    return _$listOverviewAsyncAction.run(() => super.listOverview());
  }

  @override
  String toString() {
    return '''
transaction: ${transaction}
    ''';
  }
}
