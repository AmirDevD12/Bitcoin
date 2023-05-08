import 'package:dio/dio.dart';

class ApiProvider{
  dynamic callRegisterApi(name, email, password) async{
    var formData = FormData.fromMap({
      'name' : name,
      'email': email,
      'password': password,
      'password_confirmation': password,
    });

    final response = await Dio().post(
        'https://besenior.ir/api/register',
        data: formData
    );

    return response;
  }
}