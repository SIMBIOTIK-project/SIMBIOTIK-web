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
import 'package:simbiotik_web/models/users/user_model.dart';

part 'sodako_model.freezed.dart';
part 'sodako_model.g.dart';

@freezed
class SodakoModel with _$SodakoModel {
  const factory SodakoModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'id_user') String? idUser,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'user') UserModel? user,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _SodakoModel;

  factory SodakoModel.fromJson(Map<String, dynamic> json) =>
      _$SodakoModelFromJson(json);
}
