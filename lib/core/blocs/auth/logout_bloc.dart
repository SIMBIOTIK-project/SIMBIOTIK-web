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

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final LogoutRepository _logoutRepository;

  LogoutBloc(this._logoutRepository) : super(const LogoutState()) {
    on<_Logout>(_onLogout);
  }

  Future<void> _onLogout(_Logout event, Emitter<LogoutState> emit) async {
    emit(state.copyWith(status: GetLogoutStateStatus.loading, error: ''));

    try {
      emit(
        state.copyWith(
          status: GetLogoutStateStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: GetLogoutStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
