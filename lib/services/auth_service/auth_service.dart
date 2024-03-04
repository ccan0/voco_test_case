import 'package:dio/dio.dart';
import 'package:voco_test_case/models/login_model/login_model.dart';
import 'package:voco_test_case/repositories/auth_repository/auth_repository.dart';
import 'package:voco_test_case/services/auth_service/type/auth_service_interface.dart';

class AuthService implements IAuthService {
  @override
  Future<LoginModel> login({required String email, required String password}) async{
    try {
      Response response = await AuthRepository().login(email: email, password: password);

      return LoginModel.fromJson(response.data);
    } on Exception catch (_) {
      rethrow;
    }
  }

}