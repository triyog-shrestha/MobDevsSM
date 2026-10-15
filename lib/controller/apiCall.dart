import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../core/static.dart';
import 'dart:convert' as convert;
import '../model/news.dart';
class ApiCall {
  static Future<News?>? getNewsData() async{
    //uri
    try {
      var url = Uri.https(
        Staticfile.baseurl,
        Staticfile.path,
        {
          "q": "apple",
          "sortBy": "popularity",
          "apiKey": Staticfile.apikey,
        }
      );
      var response = await http.get(url);
      if (response.statusCode.toString().contains("20")){
        var responsedata = convert.jsonDecode(response.body);
        var data = News.fromJson(responsedata);
        if (kDebugMode) {
          print(data);
        }
        return data;
      }
      else{
        return null;
      }
    }
    on Exception catch (e) {
      return null;
    }

  }
}