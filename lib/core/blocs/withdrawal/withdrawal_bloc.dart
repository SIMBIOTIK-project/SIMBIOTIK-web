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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/models.dart';

part 'withdrawal_event.dart';
part 'withdrawal_state.dart';
part 'withdrawal_bloc.freezed.dart';

class WithdrawalBloc extends Bloc<WithdrawalEvent, WithdrawalState> {
  final WithdrawalRepository _withdrawalRepository;

  WithdrawalBloc(this._withdrawalRepository) : super(const WithdrawalState()) {
    on<_PostWithdrawal>(_onPostWithdrawalData);
    on<_Fetch>(_onFetch);
    on<_FetchAll>(_onFetchAll);
  }

  Future<void> _onPostWithdrawalData(
    _PostWithdrawal event,
    Emitter<WithdrawalState> emit,
  ) async {
    emit(state.copyWith(status: WithdrawalStateStatus.loading, error: ''));

    try {
      await _withdrawalRepository.postWithdrawal(
        event.request,
        event.token,
      );

      emit(state.copyWith(status: WithdrawalStateStatus.loaded));
    } catch (e) {
      emit(
        state.copyWith(
          status: WithdrawalStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetch(_Fetch event, Emitter<WithdrawalState> emit) async {
    emit(state.copyWith(status: WithdrawalStateStatus.loading, error: ''));

    try {
      final response = await _withdrawalRepository.getWithdrawal(
        event.token,
        event.idUser,
        event.page,
      );

      emit(
        state.copyWith(
          status: WithdrawalStateStatus.loaded,
          data: response,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WithdrawalStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchAll(
      _FetchAll event, Emitter<WithdrawalState> emit) async {
    emit(state.copyWith(status: WithdrawalStateStatus.loading, error: ''));

    try {
      final List<WithdrawalModel> withdrawals =
          await _withdrawalRepository.getAllWithdrawal(
        event.token,
        event.idUser,
      );

      emit(
        state.copyWith(
          status: WithdrawalStateStatus.loaded,
          allData: withdrawals,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WithdrawalStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
