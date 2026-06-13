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
import 'package:simbiotik_web/core/networks/auth_interceptor.dart';
import 'package:simbiotik_web/core/storages/auth_storage.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/auth/register_response.dart';
import 'package:simbiotik_web/models/auth/user_action_response.dart';

class RegisterRepository {
  final Dio _dio = Dio()
    ..interceptors.add(
      AuthInterceptor(
        AuthStorage(),
      ),
    )
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
    try {
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

      return RegisterResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw Exception(
          e.response?.data['email']?.first ?? 'Data tidak valid',
        );
      }

      throw Exception('Gagal melakukan registrasi');
    }
  }

  Future<UserActionResponse> update(
    String id,
    String name,
    String email,
    String password,
    String passwordConfirmation,
    String nik,
    String phoneNumber,
    String address,
    String status,
  ) async {
    try {
      final response = await _dio.put(
        '${dotenv.get('URL')}/users/$id', // endpoint edit
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

      return UserActionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw Exception(
          e.response?.data['email']?.first ?? 'Data tidak valid',
        );
      }

      throw Exception('Gagal melakukan pembaruan data');
    }
  }
}
