import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> postApi({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String>? header,
  }) async {
    try {
      log("URL == > $url");
      log("body == > $body");
      log("header == > $header");
      return await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: header,
      );
    } catch (e) {
      log('catch --> $e');
      return null;
    }
  }
}
