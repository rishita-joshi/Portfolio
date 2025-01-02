import 'package:mobx/mobx.dart';

import '../model/data_model.dart';
import '../res/constant.dart';
part 'AppStore.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  // @observable
  // late DialogFlowtter dialogFlowtter;

  @observable
  ObservableList<Skills> skillsList = ObservableList<Skills>();

  @observable
  ObservableList<ProjectModel> projectList = ObservableList<ProjectModel>();

  @observable
  ObservableList<Map<String, dynamic>> messages =
      ObservableList<Map<String, dynamic>>();

  @action
  addProjectList() {
    projectList.clear();
    projectList.add(ProjectModel(
        "Android Insight",
        "https://play.google.com/store/apps/details?id=com.techcoder.LearnAndroid",
        "",
        "",
        ImageClass().ic_android_insight));
    projectList.add(ProjectModel(
        "Portfilo",
        "",
        "https://rishita-joshi-9.web.app/",
        "https://github.com/rishita-joshi/Portfolio",
        ImageClass().ic_portfilo));
    projectList.add(ProjectModel(
        "Idare",
        "https://play.google.com/store/apps/details?id=com.iDare.dev",
        "",
        "",
        ImageClass().ic_idare));
    projectList.add(ProjectModel(
        "Income Mange",
        "https://play.google.com/store/search?q=my%20money&c=apps",
        "",
        "",
        ImageClass().ic_income));
  }

  @action
  addSkillsData() {
    skillsList.clear();
    skillsList.add(Skills("Flutter", ImageClass().ic_flutter));
    skillsList.add(Skills("Dart", ImageClass().ic_dart));
    skillsList.add(Skills("Java", ImageClass().ic_java));
    skillsList.add(Skills("HTMl", ImageClass().ic_html));
    skillsList.add(Skills("CSS", ImageClass().ic_css));
    skillsList.add(Skills("Firebase", ImageClass().ic_firebase));
    skillsList.add(Skills("SQL", ImageClass().ic_sql));
    skillsList.add(Skills("Notion", ImageClass().ic_notion));
    skillsList.add(Skills("Github", ImageClass().ic_github));
    skillsList.add(Skills("Jira", ImageClass().ic_jira));
    // skillsList.add(Skills("CSS", ImageClass().ic_css));
  }
}
