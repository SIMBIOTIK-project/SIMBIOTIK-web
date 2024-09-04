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

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_web/models/models.dart';

part 'withdrawal_model.freezed.dart';
part 'withdrawal_model.g.dart';

@freezed
class WithdrawalModel with _$WithdrawalModel {
  const factory WithdrawalModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'id_user') String? idUser,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'user') UserModel? user,
    @JsonKey(name: 'created_by') String? createdBy,
  }) = _WithdrawalModel;

  factory WithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalModelFromJson(json);
}
