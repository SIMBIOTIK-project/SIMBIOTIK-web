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
    on<_FetchId>(_onFetchId);
    on<_FetchAll>(_onFetchAll);
    on<_Add>(_onAdd);
    on<_Edit>(_onEdit);
    on<_Delete>(_onDelete);
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

  Future<void> _onFetchId(_FetchId event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      final response = await _wasteTypeRepository.getWasteTypeId(
        event.token,
        event.id,
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

  Future<void> _onAdd(_Add event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      final response = await _wasteTypeRepository.add(
        event.token,
        event.type,
        event.price,
      );

      emit(state.copyWith(
        status: WasteTypeStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: WasteTypeStateStatus.error,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onEdit(_Edit event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      final response = await _wasteTypeRepository.edit(
        event.token,
        event.id,
        event.type,
        event.price,
      );

      emit(state.copyWith(
        status: WasteTypeStateStatus.loaded,
        data: response,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: WasteTypeStateStatus.error,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<WasteTypeState> emit) async {
    emit(state.copyWith(status: WasteTypeStateStatus.loading, error: ''));

    try {
      await _wasteTypeRepository.delete(
        event.token,
        event.id,
      );

      emit(state.copyWith(
        status: WasteTypeStateStatus.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: WasteTypeStateStatus.error,
        error: e.toString(),
      ));
    }
  }
}
