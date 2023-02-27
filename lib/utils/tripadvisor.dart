import 'dart:convert';

import 'package:http/http.dart';

import '../models/review_model.dart';


class Tripadvisor {
  Future<review_model> getReviews() async {
    var finalUrl = "https://api.content.tripadvisor.com/api/v1/location/6765441/reviews?key=101B21FF35204A5795E379BF85B331D4&language=en";
    
    final response = await get(Uri.parse(finalUrl));
    print("URL: ${Uri.parse(finalUrl)}");
    print(response.statusCode);
    // final programJson = ProgramModel.fromJson(json.decode(response.body));
    // Map<String, dynamic> map = programJson;

    // if (response.statusCode == 200 ) {
    //   // print(response.body);
      var data = json.decode(response.body);
    //   return data.map((e)=>ProgramModel.fromJson(e)).toList();
    // }else {
    //   throw Exception("Error getting program data");
    // }

    return data.map((e) => review_model.fromJson(e)).toList();
  }
}
