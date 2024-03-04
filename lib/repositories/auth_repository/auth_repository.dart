import 'package:dio/dio.dart';
import 'package:voco_test_case/core/client/app_client.dart';
import 'package:voco_test_case/repositories/auth_repository/type/auth_repository_interface.dart';
import 'package:voco_test_case/utilities/constants/url_constants/url_constants.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<Response> login({required String email, required String password}) async {
    try {
      Response response = await AppClient().post(
        url: UrlConstants().login,
        body: {"email": email, "password": password},
      );

      return response;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
