// Copyright 2026 ariefsetyonugroho
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
import 'package:simbiotik_web/core/networks/networks.dart';
import 'package:simbiotik_web/core/storages/auth_storage.dart';
import 'package:simbiotik_web/data/api_constants.dart';
import 'package:simbiotik_web/models/sodakos/sodako_request_model.dart';
import 'package:simbiotik_web/models/sodakos/sodako_response_model.dart';

class SodakoRepository {
  final Dio _dio = Dio()
    ..interceptors.add(
      AuthInterceptor(
        AuthStorage(),
      ),
    )
    ..interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        requestHeader: false,
      ),
    );

  final String api = dotenv.get('URL') + ApiConstants.sodako;
  Future<SodakoResponseModel> getSodakos({
    String? idUser,
    int? page,
    String? date,
    String? startDate,
    String? endDate,
  }) async {
    final queryParameters = <String, dynamic>{
      'page': page,
    };

    if (idUser != null && idUser.isNotEmpty) {
      queryParameters['user_id'] = idUser;
    }

    if (date != null && date.isNotEmpty) {
      queryParameters['date'] = date;
    }

    if (startDate != null && startDate.isNotEmpty) {
      queryParameters['start_date'] = startDate;
    }

    if (endDate != null && endDate.isNotEmpty) {
      queryParameters['end_date'] = endDate;
    }

    final response = await _dio.get(
      api,
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      return SodakoResponseModel.fromJson(
        response.data['data'],
      );
    }

    throw Exception('Gagal memuat data');
  }

  Future<void> createSodako(
    SodakoRequestModel request,
  ) async {
    try {
      final response = await _dio.post(
        api,
        data: request.toJson(),
      );

      if (response.statusCode != 201 && response.statusCode != 200) {
        throw Exception(response.data['message'] ?? 'Failed to create sodako');
      }
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? e.message ?? 'Network error',
      );
    }
  }
}
