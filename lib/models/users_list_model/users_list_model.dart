import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voco_test_case/models/user_model/user_model.dart';

part 'users_list_model.freezed.dart';
part 'users_list_model.g.dart';

@freezed
class UsersList with _$UsersList {
  factory UsersList({
    int? page,

    @JsonKey(name: "per_page")
    int? perPage,

    int? total,

    @JsonKey(name: "total_pages")
    int? totalPages,

    List<User>? data
  }) = _UsersList;

  factory UsersList.fromJson(Map<String, dynamic> json) => _$UsersListFromJson(json);
}