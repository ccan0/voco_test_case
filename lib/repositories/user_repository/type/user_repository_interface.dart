import 'package:dio/dio.dart';

abstract class IUserRepository {
  Future<Response> getUserList({required String page});
}