import 'package:dio/dio.dart';

abstract class IAuthRepository {
  Future<Response> login({required String email, required String password});
}