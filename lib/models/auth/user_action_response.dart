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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_web/models/models.dart';

part 'user_action_response.freezed.dart';
part 'user_action_response.g.dart';

@freezed
class UserActionResponse with _$UserActionResponse {
  const factory UserActionResponse({
    required bool success,
    required String message,
    @JsonKey(name: 'data') required UserModel user,
  }) = _UserActionResponse;

  factory UserActionResponse.fromJson(Map<String, dynamic> json) =>
      _$UserActionResponseFromJson(json);
}
