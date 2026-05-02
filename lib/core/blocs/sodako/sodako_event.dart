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

part of 'sodako_bloc.dart';

@freezed
class SodakoEvent with _$SodakoEvent {
  const factory SodakoEvent.fetch({
    required String token,
    String? idUser,
    int? page,
  }) = _Fetch;

  const factory SodakoEvent.create({
    required String token,
    required SodakoRequestModel request,
  }) = _Create;
}
