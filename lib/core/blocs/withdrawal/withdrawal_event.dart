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

part of 'withdrawal_bloc.dart';

@freezed
class WithdrawalEvent with _$WithdrawalEvent {
  const factory WithdrawalEvent.postWithdrawal({
    required WithdrawalsRequestModel request,
    required String token,
  }) = _PostWithdrawal;
  const factory WithdrawalEvent.fetch({
    required String token,
    String? idUser,
    int? page,
  }) = _Fetch;

  const factory WithdrawalEvent.fetchAll({
    required String token,
    String? idUser,
  }) = _FetchAll;
}
