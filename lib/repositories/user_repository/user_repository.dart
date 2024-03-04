import 'package:dio/dio.dart';
import 'package:voco_test_case/core/client/app_client.dart';
import 'package:voco_test_case/repositories/user_repository/type/user_repository_interface.dart';
import 'package:voco_test_case/utilities/constants/url_constants/url_constants.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Response> getUserList({required String page}) async{
    try {
      Response response = await AppClient().get(url: UrlConstants().usersList, queryParameters: {"page": page});

      return response;
    } on Exception catch (_) {
      rethrow;
    }
  }
}