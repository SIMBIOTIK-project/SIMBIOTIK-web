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

part of 'deposit_bloc.dart';

@freezed
class DepositEvent with _$DepositEvent {
  const factory DepositEvent.postDeposit({
    required DepositRequestModel request,
  }) = _PostDeposit;
  const factory DepositEvent.fetch({
    @Default('') String? idUser,
    @Default(1) int page,
    String? wasteTypeId,
    String? date,
    String? startDate,
    String? endDate,
  }) = _Fetch;

  const factory DepositEvent.fetchAll({
    String? idUser,
  }) = _FetchAll;

  const factory DepositEvent.delete({
    required String id,
  }) = _Delete;
}
