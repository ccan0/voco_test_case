import 'package:voco_test_case/models/login_model/login_model.dart';

abstract class IAuthService {
  Future<LoginModel> login({required String email, required String password});
}