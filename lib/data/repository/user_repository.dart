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
import 'package:simbiotik_web/models/models.dart';

class UserRepository {
  final Dio _dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      requestHeader: false,
      error: true,
    ));
  final String api = dotenv.get('URL') + ApiConstants.allUser;
  Future<UserResponseModel> getUser(
    String token,
    String? status,
    String? name,
    int? page,
  ) async {
    final response = await _dio.get(api,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {
          'status': status,
          'page': page,
          'name': name,
        });

    if (response.statusCode == 200) {
      return UserResponseModel.fromJson(response.data['data']);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<UserResponseModel> getUserId(
    String token,
    String? id,
  ) async {
    final response = await _dio.get(
      '$api/$id',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == 200) {
      return UserResponseModel.fromJson(response.data['data']);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<List<UserModel>> getAllUsers(
    String token,
    String? status,
    String? name,
  ) async {
    List<UserModel> allUsers = [];
    int? currentPage = 1;
    int? totalPages;

    do {
      final response = await getUser(token, status, name, currentPage);
      allUsers.addAll(response.result?.data ?? []);
      totalPages = response.result?.totalPages;
      currentPage = (currentPage ?? 1) + 1;
    } while (currentPage <= totalPages!);

    return allUsers;
  }

  Future<UserResponseModel> edit(
    String token,
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
    final response = await _dio.put(
      '$api/$id',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
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
      return UserResponseModel.fromJson(response.data);
    } else {
      throw Exception('Gagal edit data');
    }
  }

  Future<void> delete(
    String token,
    String id,
  ) async {
    final response = await _dio.delete(
      '$api/$id',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Gagal menghapus data');
    }
  }
}
