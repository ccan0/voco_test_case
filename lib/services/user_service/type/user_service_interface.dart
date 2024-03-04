import 'package:voco_test_case/models/users_list_model/users_list_model.dart';

abstract class IUserService {
  Future<UsersList> getUserList({required int page});
}