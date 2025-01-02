// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStore, Store {
  late final _$skillsListAtom =
      Atom(name: '_AppStore.skillsList', context: context);

  @override
  ObservableList<Skills> get skillsList {
    _$skillsListAtom.reportRead();
    return super.skillsList;
  }

  @override
  set skillsList(ObservableList<Skills> value) {
    _$skillsListAtom.reportWrite(value, super.skillsList, () {
      super.skillsList = value;
    });
  }

  late final _$projectListAtom =
      Atom(name: '_AppStore.projectList', context: context);

  @override
  ObservableList<ProjectModel> get projectList {
    _$projectListAtom.reportRead();
    return super.projectList;
  }

  @override
  set projectList(ObservableList<ProjectModel> value) {
    _$projectListAtom.reportWrite(value, super.projectList, () {
      super.projectList = value;
    });
  }

  late final _$messagesAtom =
      Atom(name: '_AppStore.messages', context: context);

  @override
  ObservableList<Map<String, dynamic>> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<Map<String, dynamic>> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  late final _$_AppStoreActionController =
      ActionController(name: '_AppStore', context: context);

  @override
  dynamic addProjectList() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.addProjectList');
    try {
      return super.addProjectList();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addSkillsData() {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.addSkillsData');
    try {
      return super.addSkillsData();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
skillsList: ${skillsList},
projectList: ${projectList},
messages: ${messages}
    ''';
  }
}
