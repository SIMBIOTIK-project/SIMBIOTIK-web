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

class WithdrawalRepository {
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
  final String api = dotenv.get('URL') + ApiConstants.withdrawal;

  Future<WithdrawalsRequestModel> postWithdrawal(
    WithdrawalsRequestModel request,
  ) async {
    final response = await _dio.post(
      api,
      data: request.toJson(),
    );

    if (response.statusCode == 201) {
      return WithdrawalsRequestModel.fromJson(response.data);
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  Future<WithdrawalResponseModel> getWithdrawal({
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
      return WithdrawalResponseModel.fromJson(
        response.data['data'],
      );
    }

    throw Exception('Gagal memuat data');
  }

  Future<List<WithdrawalModel>> getAllWithdrawal(
    String? idUser,
  ) async {
    List<WithdrawalModel> allWithdrawals = [];
    int? currentPage = 1;
    int? totalPages;

    do {
      final response = await getWithdrawal(
        idUser: idUser,
        page: currentPage ?? 1,
      );
      allWithdrawals.addAll(response.result?.data ?? []);
      totalPages = response.result?.totalPages;
      currentPage = (currentPage ?? 1) + 1;
    } while (currentPage <= totalPages!);

    return allWithdrawals;
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
