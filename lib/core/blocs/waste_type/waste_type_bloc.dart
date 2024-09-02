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
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/models.dart';

part 'waste_type_event.dart';
part 'waste_type_state.dart';
part 'waste_type_bloc.freezed.dart';

class WasteTypeBloc extends Bloc<WasteTypeEvent, WasteTypeState> {
  final WasteTypeRepository _wasteTypeRepository;

  WasteTypeBloc(this._wasteTypeRepository) : super(const WasteTypeState()) {
    on<_Fetch>(_onFetch);
    on<_FetchAll>(_onFetchAll);
  }

  Future<void> _onFetch(_Fetch event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      final response = await _wasteTypeRepository.getWasteType(
        event.token,
        event.page,
      );

      emit(state.copyWith(
        status: WasteTypeStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          status: WasteTypeStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchAll(
      _FetchAll event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      final List<WasteTypesModel> wasteTypes =
          await _wasteTypeRepository.getAllWasteType(
        event.token,
      );

      emit(
        state.copyWith(
          status: WasteTypeStateStatus.loaded,
          allData: wasteTypes,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WasteTypeStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
