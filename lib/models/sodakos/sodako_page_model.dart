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

import 'sodako_model.dart';

part 'sodako_page_model.freezed.dart';
part 'sodako_page_model.g.dart';

@freezed
class SodakoPageModel with _$SodakoPageModel {
  const factory SodakoPageModel({
    @JsonKey(name: 'total_data') int? totalData,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'data') List<SodakoModel>? data,
  }) = _SodakoPageModel;

  factory SodakoPageModel.fromJson(Map<String, dynamic> json) =>
      _$SodakoPageModelFromJson(json);
}
