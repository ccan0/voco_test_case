import 'package:dio/dio.dart';
import 'package:voco_test_case/models/users_list_model/users_list_model.dart';
import 'package:voco_test_case/repositories/user_repository/user_repository.dart';
import 'package:voco_test_case/services/user_service/type/user_service_interface.dart';

class UserService implements IUserService {
  @override
  Future<UsersList> getUserList({required int page}) async{
    try {
      Response response = await UserRepository().getUserList(page: page.toString());
      return UsersList.fromJson(response.data);
    } on Exception catch (_) {
      rethrow;
    }
  }
}