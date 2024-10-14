// Copyright 2024 ariefsetyonugroho
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
import 'package:simbiotik_web/data/repository/reset_password_repository.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordRepository _resetPasswordRepository;

  ResetPasswordBloc(this._resetPasswordRepository)
      : super(const ResetPasswordState()) {
    on<_Reset>(_onReset);
  }

  Future<void> _onReset(_Reset event, Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(status: GetResetPasswordStatus.loading, error: ''));

    try {
      final response = await _resetPasswordRepository.reset(
        event.id,
        event.newPassword,
        event.confirmationNewPassword,
      );

      emit(state.copyWith(
        status: GetResetPasswordStatus.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: GetResetPasswordStatus.error,
        error: e.toString(),
      ));
    }
  }
}
