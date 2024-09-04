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

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(const UserState()) {
    on<_Fetch>(_onFetch);
    on<_FetchId>(_onFetchId);
    on<_FetchAll>(_onFetchAll);
    on<_Edit>(_onEdit);
    on<_Delete>(_onDelete);
  }

  Future<void> _onFetch(_Fetch event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStateStatus.loading, error: ''));

    try {
      final response = await _userRepository.getUser(
        event.token,
        event.status,
        event.name,
        event.page,
      );

      emit(state.copyWith(
        status: UserStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          status: UserStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchAll(_FetchAll event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStateStatus.loading, error: ''));

    try {
      final List<UserModel> users = await _userRepository.getAllUsers(
        event.token,
        event.status,
        event.name,
      );

      emit(
        state.copyWith(
          status: UserStateStatus.loaded,
          allData: users,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: UserStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchId(_FetchId event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStateStatus.loading, error: ''));

    try {
      final response = await _userRepository.getUserId(
        event.token,
        event.id,
      );

      emit(state.copyWith(
        status: UserStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          status: UserStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onEdit(_Edit event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStateStatus.loading, error: ''));

    try {
      final response = await _userRepository.edit(
        event.token,
        event.id,
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
        status: UserStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: UserStateStatus.error,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStateStatus.loading, error: ''));

    try {
      await _userRepository.delete(
        event.token,
        event.id,
      );

      emit(state.copyWith(
        status: UserStateStatus.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: UserStateStatus.error,
        error: e.toString(),
      ));
    }
  }
}
