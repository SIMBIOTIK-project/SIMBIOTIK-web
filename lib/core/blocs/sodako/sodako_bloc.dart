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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_web/data/repository/sodako_repository.dart';
import 'package:simbiotik_web/models/sodakos/sodako_request_model.dart';
import 'package:simbiotik_web/models/sodakos/sodako_response_model.dart';

part 'sodako_event.dart';
part 'sodako_state.dart';
part 'sodako_bloc.freezed.dart';

class SodakoBloc extends Bloc<SodakoEvent, SodakoState> {
  final SodakoRepository _sodakoRepository;

  SodakoBloc(this._sodakoRepository) : super(const SodakoState()) {
    on<_Create>(_onCreate);
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(event, Emitter<SodakoState> emit) async {
    emit(state.copyWith(
      status: SodakoStateStatus.loading,
      error: '',
    ));

    try {
      final response = await _sodakoRepository.getSodakos(
        event.token,
        event.idUser,
        event.page,
      );

      emit(state.copyWith(
        status: SodakoStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SodakoStateStatus.error,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onCreate(
    _Create event,
    Emitter<SodakoState> emit,
  ) async {
    emit(state.copyWith(
      status: SodakoStateStatus.loading,
      error: '',
    ));

    try {
      await _sodakoRepository.createSodako(
        event.token,
        event.request,
      );

      emit(state.copyWith(
        status: SodakoStateStatus.loaded,
      ));

      emit(state.copyWith(
        status: SodakoStateStatus.success,
      ));

      add(SodakoEvent.fetch(
        token: event.token,
        idUser: event.request.idUser!,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SodakoStateStatus.error,
        error: e.toString(),
      ));
    }
  }
}
