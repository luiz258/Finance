
import 'package:Finance/repository/overview.repository.dart';
import 'package:mobx/mobx.dart';
import 'package:Finance/models/overview.models.dart';

part 'overview.store.g.dart';

class OverviewStore = _OverviewStore with _$OverviewStore;



abstract class _OverviewStore with Store{
  OverviewRepository _rep;
  _OverviewStore(){
  _rep=OverviewRepository();
  }
  @observable
 ObservableList<OverViewModel> transaction;



 @action
 listOverview ()async {
  
   transaction = ObservableList<OverViewModel>.of( await _rep.getlist());
  ///transaction.addAll(data);

}
}