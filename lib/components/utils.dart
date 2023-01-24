class Utils {}

extension RouteHelper on String {
  String getRoutePath() {
    return split('/').last;
  }
}
