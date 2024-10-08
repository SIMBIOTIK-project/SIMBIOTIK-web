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

part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetch({
    required String token,
    String? status,
    String? name,
    int? page,
  }) = _Fetch;

  const factory UserEvent.fetchAll({
    required String token,
    String? status,
    String? name,
  }) = _FetchAll;

  const factory UserEvent.fetchId({
    required String token,
    String? id,
  }) = _FetchId;

  const factory UserEvent.edit({
    required String token,
    required String id,
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String nik,
    required String phoneNumber,
    required String address,
    required String status,
  }) = _Edit;

  const factory UserEvent.delete({
    required String id,
    required String token,
  }) = _Delete;
}
