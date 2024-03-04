class RouteConstants {
  static final RouteConstants _instance = RouteConstants._internal();

  factory RouteConstants() {
    return _instance;
  }

  RouteConstants._internal();

  static const String initial = "/";
  static const String usersView = "users_view";
}