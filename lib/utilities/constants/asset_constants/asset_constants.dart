class AssetConstants {
  static final AssetConstants _instance = AssetConstants._internal();

  factory AssetConstants() {
    return _instance;
  }

  AssetConstants._internal();

  String logo = "assets/svgs/purple_logo.svg";
}
