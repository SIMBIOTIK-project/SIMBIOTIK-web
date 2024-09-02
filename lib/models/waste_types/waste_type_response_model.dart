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

part 'waste_type_response_model.freezed.dart';
part 'waste_type_response_model.g.dart';

@freezed
class WasteTypeResponseModel with _$WasteTypeResponseModel {
  const factory WasteTypeResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'result') WasteTypePageModel? result,
  }) = _WasteTypeResponseModel;

  factory WasteTypeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WasteTypeResponseModelFromJson(json);
}
