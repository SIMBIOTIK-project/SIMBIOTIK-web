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
import 'package:simbiotik_web/core/storages/storage.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/models.dart';

class UserRepository {
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
  final String api = dotenv.get('URL') + ApiConstants.allUser;
  Future<UserResponseModel> getUser(
    String? status,
    String? name,
    int? page,
  ) async {
    final response = await _dio.get(api, queryParameters: {
      'status': status,
      'page': page,
      'keyword': name,
    });

    if (response.statusCode == 200) {
      return UserResponseModel.fromJson(response.data['data']);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<UserResponseModel> getUserId(
    String? id,
  ) async {
    final response = await _dio.get(
      '$api/$id',
    );

    if (response.statusCode == 200) {
      return UserResponseModel.fromJson(response.data['data']);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<List<UserModel>> getAllUsers(
    String? status,
    String? name,
  ) async {
    List<UserModel> allUsers = [];
    int? currentPage = 1;
    int? totalPages;

    do {
      final response = await getUser(status, name, currentPage);
      allUsers.addAll(response.result?.data ?? []);
      totalPages = response.result?.totalPages;
      currentPage = (currentPage ?? 1) + 1;
    } while (currentPage <= totalPages!);

    return allUsers;
  }

  Future<UserResponseModel> edit(
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
    String id,
  ) async {
    final response = await _dio.delete(
      '$api/$id',
    );

    if (response.statusCode != 200) {
      throw Exception('Gagal menghapus data');
    }
  }
}
