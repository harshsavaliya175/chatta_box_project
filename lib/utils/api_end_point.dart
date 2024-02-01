class ApiEndPoint {
  static const String apiBaseUrl =
      'http://codonnier.tech/naitik/chatta_box/dev/';

  static const String loginEndPoint =
      '${apiBaseUrl}Service.php?Service=login&show_error=true';

  static const String registerEndPoint =
      '${apiBaseUrl}Service.php?Service=registration&show_error=true';

  static const String forgotPasswordEndPoint =
      '${apiBaseUrl}Service.php?Service=forgotPassword&show_error=true';
}
