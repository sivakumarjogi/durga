import 'dart:convert';

import 'package:dio/dio.dart';

class LoginRepo {
  Future login(Map<String, String> body) async {
    try {
      Dio dio = Dio();
      // var body = {
      //   "Email": "k@asdagmail.com",
      //   "password": "password@1234",
      // };

      var response = await dio.post(
          "http://rmsdevservice.walkingtree.tech/signin",
          data: body is FormData ? body : json.encode(body));
      if (response.statusCode == 200) {
        var data = response.data;
        print(data['token'].toString());
        print('Login successfully');
        return response;
      } else {
        print(response.data['error']['message']);
        return response.data['error']['message'];
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text(response.data['error']['message'])));
      }
    } on DioError catch (e) {
      // print(e.response.toString());
      return e.response;
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //     content: Text(e.response!.data['error']['message'].toString())));
    }
  }
}
