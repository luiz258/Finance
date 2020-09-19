import 'package:mobx/mobx.dart';
part 'login.store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;
abstract class _LoginStore with Store{

  _LoginStore(){
    autorun(){

    }
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) =>email = value;

  @observable
    String password = "";

  @observable
  bool passwordShow = false;

  @action 
  void togglePassword() => passwordShow = !passwordShow;
  @action
    void setPassWord(String value) => password = value;


} 