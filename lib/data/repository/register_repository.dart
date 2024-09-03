// Copyright 2024 SIMBIOTIK Developer
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/auth/register_response.dart';

class RegisterRepository {
  final Dio _dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      requestHeader: false,
      error: true,
    ));
  final String api = dotenv.get('URL') + ApiConstants.register;
  Future<RegisterResponse> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
    String nik,
    String phoneNumber,
    String address,
    String status,
  ) async {
    final response = await _dio.post(
      api,
      data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'nik': nik,
        'phone_number': phoneNumber,
        'address': address,
        'status': status,
      },
    );

    if (response.statusCode == 200) {
      return RegisterResponse.fromJson(response.data);
    } else {
      throw Exception('Gagal registrasi');
    }
  }
}
