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
import 'package:simbiotik_web/data/repository/register_repository.dart';
import 'package:simbiotik_web/models/models.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository _registerRepository;

  RegisterBloc(this._registerRepository) : super(const RegisterState()) {
    on<_Register>(_onRegister);
  }

  Future<void> _onRegister(_Register event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStateStatus.loading, error: ''));

    try {
      final response = await _registerRepository.register(
        event.name,
        event.email,
        event.password,
        event.passwordConfirmation,
        event.nik,
        event.phoneNumber,
        event.address,
        event.status,
      );

      emit(state.copyWith(
        status: RegisterStateStatus.loaded,
        data: response.user,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: RegisterStateStatus.error,
        error: e.toString(),
      ));
    }
  }
}
