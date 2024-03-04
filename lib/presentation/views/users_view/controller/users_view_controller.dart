import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:voco_test_case/models/users_list_model/users_list_model.dart';
import 'package:voco_test_case/services/user_service/user_service.dart';

part 'users_view_controller.g.dart';

@riverpod
class UsersViewController extends _$UsersViewController{
  UsersList usersList = UsersList();
  int page = 1;

  @override
  UsersList build() {
    getUsersList();
    return usersList;
  }

  Future<void> getUsersList() async{
    UsersList newUsersList = await UserService().getUserList(page: page);

    state = newUsersList;
  }

  void nextPage() async{
    page += 1;

    await getUsersList();
  }

  void previousPage() async{
    page -= 1;

    await getUsersList();
  }

}
