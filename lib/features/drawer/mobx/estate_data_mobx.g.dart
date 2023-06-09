// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estate_data_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EstateDataMobx on EstateDataBase, Store {
  late final _$estateAtom =
      Atom(name: 'EstateDataBase.estate', context: context);

  @override
  EstateDataModel? get estate {
    _$estateAtom.reportRead();
    return super.estate;
  }

  @override
  set estate(EstateDataModel? value) {
    _$estateAtom.reportWrite(value, super.estate, () {
      super.estate = value;
    });
  }

  late final _$indexEstateDataAsyncAction =
      AsyncAction('EstateDataBase.indexEstateData', context: context);

  @override
  Future<void> indexEstateData() {
    return _$indexEstateDataAsyncAction.run(() => super.indexEstateData());
  }

  @override
  String toString() {
    return '''
estate: ${estate}
    ''';
  }
}
