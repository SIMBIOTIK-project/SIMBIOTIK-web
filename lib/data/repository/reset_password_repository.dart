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
import 'package:simbiotik_web/models/auth/reset_password_response.dart';

class ResetPasswordRepository {
  final Dio _dio = Dio();
  final String api = dotenv.get('URL') + ApiConstants.reset;
  Future<ResetPasswordResponse> reset(
      String id, String newPassword, String confirmationNewPassword) async {
    final response = await _dio.post(
      api,
      data: {
        'id_user': id,
        'new_password': newPassword,
        'new_password_confirmation': confirmationNewPassword,
      },
    );

    if (response.statusCode == 200) {
      return ResetPasswordResponse.fromJson(response.data);
    } else {
      throw Exception('Gagal Mengubah Kata Sandi');
    }
  }
}
