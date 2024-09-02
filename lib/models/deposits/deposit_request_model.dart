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

part 'deposit_request_model.freezed.dart';
part 'deposit_request_model.g.dart';

@freezed
class DepositRequestModel with _$DepositRequestModel {
  const factory DepositRequestModel({
    @JsonKey(name: 'id_user') String? idUser,
    @JsonKey(name: 'id_wastetype') String? idWasteType,
    @JsonKey(name: 'weight') String? weight,
    @JsonKey(name: 'price') String? price,
  }) = _DepositRequestModel;

  factory DepositRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DepositRequestModelFromJson(json);
}
