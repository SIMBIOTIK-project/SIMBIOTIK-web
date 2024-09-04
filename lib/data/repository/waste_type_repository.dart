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

class WasteTypeRepository {
  final Dio _dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      requestHeader: false,
      error: true,
    ));
  final String api = dotenv.get('URL') + ApiConstants.wasteType;
  Future<WasteTypeResponseModel> getWasteType(
    String token,
    int? page,
  ) async {
    final response = await _dio.get(api,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {
          'page': page,
        });

    if (response.statusCode == 200) {
      return WasteTypeResponseModel.fromJson(response.data['data']);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<List<WasteTypesModel>> getAllWasteType(
    String token,
  ) async {
    List<WasteTypesModel> allWasteTypes = [];
    int? currentPage = 1;
    int? totalPages;

    do {
      final response = await getWasteType(token, currentPage);
      allWasteTypes.addAll(response.result?.data ?? []);
      totalPages = response.result?.totalPages;
      currentPage = (currentPage ?? 1) + 1;
    } while (currentPage <= totalPages!);

    return allWasteTypes;
  }

  Future<WasteTypeResponseModel> add(
    String token,
    String type,
    String price,
  ) async {
    final response = await _dio.post(
      api,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
      data: {
        'type': type,
        'price': price,
      },
    );

    if (response.statusCode == 201) {
      return WasteTypeResponseModel.fromJson(response.data);
    } else {
      throw Exception('Gagal registrasi');
    }
  }
}
