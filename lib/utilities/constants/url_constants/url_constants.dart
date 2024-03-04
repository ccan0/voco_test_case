class UrlConstants {
  static final UrlConstants _instance = UrlConstants._internal();

  factory UrlConstants() {
    return _instance;
  }

  UrlConstants._internal();

  final String baseUrl = "https://reqres.in/api";
  final String login = "/login";
  final String usersList = "/users";

}