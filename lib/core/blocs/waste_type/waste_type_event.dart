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

part of 'waste_type_bloc.dart';

@freezed
class WasteTypeEvent with _$WasteTypeEvent {
  const factory WasteTypeEvent.fetch({
    required String token,
    int? page,
  }) = _Fetch;

  const factory WasteTypeEvent.fetchId({
    required String token,
    String? id,
  }) = _FetchId;

  const factory WasteTypeEvent.fetchAll({
    required String token,
  }) = _FetchAll;

  const factory WasteTypeEvent.add({
    required String token,
    required String type,
    required String price,
  }) = _Add;

  const factory WasteTypeEvent.edit({
    required String token,
    required String id,
    required String type,
    required String price,
  }) = _Edit;

  const factory WasteTypeEvent.delete({
    required String id,
    required String token,
  }) = _Delete;
}
