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

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/waste_type/waste_type.dart';
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/utils/utils.dart';
import 'package:simbiotik_web/widgets/widgets.dart';

class WasteTypeScreen extends StatelessWidget {
  const WasteTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const WasteTypeScreenContent();
  }
}

class WasteTypeScreenContent extends StatefulWidget {
  const WasteTypeScreenContent({super.key});

  @override
  State<WasteTypeScreenContent> createState() => _WasteTypeScreenContentState();
}

class _WasteTypeScreenContentState extends State<WasteTypeScreenContent> {
  String token = '';
  List<WasteTypesModel> wasteType = [];

  int currentPageWasteType = 1;
  int totalPagesWasteType = 1;

  @override
  void initState() {
    super.initState();
    _loadToken();
  }

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      setState(() {
        token = prefs.getString('token') ?? '';
      });
      _handleData(token, '');
      _handleWasteTypeData(token, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: token.isNotEmpty
          ? BlocBuilder<WasteTypeBloc, WasteTypeState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.status.isLoaded) {
                  if (state.data != null) {
                    wasteType = state.data!.result!.data!;
                    totalPagesWasteType = state.data!.result!.totalPages!;
                    return _buildContent(context);
                  } else {
                    return const Center(
                      child: Text(
                        'Data Kosong',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                } else if (state.status.isError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Data tidak ditemukan!'),
                        const Gap(8.0),
                        InkWell(
                          onTap: () {
                            _handleWasteTypeData(token, 1);
                          },
                          child: const Text(
                            'Ulangi',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            )
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Data Kosong',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Silahkan Login Terlebih Dahulu!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Text(
                  'Jenis Sampah',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  _handleAddWasteTypeDialog(context, null);
                },
                child: const Row(
                  children: [
                    Text(
                      'Tambah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(8.0),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(40),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Data Jenis Sampah',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(12.0),
                  _buildUserTable(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _handleAddWasteTypeDialog(
    BuildContext context,
    WasteTypesModel? data,
  ) async {
    bool? result;
    result = await showDialog(
      context: context,
      builder: (dialogContext) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: AddWasteTypeDialog(
            data: data,
          ),
        );
      },
    );
    if (result == true) {
      _handleWasteTypeData(token, 1);
    }
  }

  _buildUserTable(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            final double columnSpacing = constraints.maxWidth * 0.3;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: columnSpacing,
                columns: const [
                  DataColumn(
                      label: Text(
                    "ID",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Tipe',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Harga',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Tanggal',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Aksi',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                ],
                rows: wasteType.map((wasteType) {
                  return DataRow(
                    cells: [
                      DataCell(Text(wasteType.id.toString())),
                      DataCell(Text(wasteType.type.toString())),
                      DataCell(Text(formatCurrency(
                          double.parse(wasteType.price.toString())))),
                      DataCell(
                          Text(formattedDate(wasteType.createdAt.toString()))),
                      DataCell(Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              bool? result;
                              result = await showDialog(
                                context: context,
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: const Text('Hapus Jenis Sampah'),
                                    content: const Text(
                                        'Apakah anda yakin akan menghapus data?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(dialogContext).pop(true);
                                        },
                                        child: const Text('Ya, Hapus'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(dialogContext).pop();
                                        },
                                        child: const Text('Tidak'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              if (result == true) {
                                _handleDeleteData(wasteType.id.toString());
                                _handleWasteTypeData(token, 1);
                                //TODO: Fix this
                                _handleWasteTypeData(token, 1);
                              }
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                          const Gap(8.0),
                          InkWell(
                            onTap: () {
                              _handleAddWasteTypeDialog(
                                context,
                                wasteType,
                              );
                            },
                            child: const Icon(Icons.edit),
                          ),
                        ],
                      ))
                    ],
                  );
                }).toList(),
              ),
            );
          },
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.biruSimbiotik,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onPressed: currentPageWasteType > 1
                  ? () {
                      _handleWasteTypeData(token, currentPageWasteType - 1);
                      setState(() {
                        currentPageWasteType--;
                      });
                    }
                  : null,
              child: const Icon(
                Icons.arrow_left_outlined,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.biruSimbiotik,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onPressed: currentPageWasteType < totalPagesWasteType
                  ? () {
                      _handleWasteTypeData(token, currentPageWasteType + 1);
                      setState(() {
                        currentPageWasteType++;
                      });
                    }
                  : null,
              child: const Icon(
                Icons.arrow_right_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
        const Gap(20),
      ],
    );
  }

  _handleData(String token, String? keyword) {
    context.read<WasteTypeBloc>().add(WasteTypeEvent.fetch(
          token: token,
        ));
  }

  _handleWasteTypeData(String token, int? page) {
    context.read<WasteTypeBloc>().add(
          WasteTypeEvent.fetch(
            token: token,
            page: page,
          ),
        );
  }

  _handleDeleteData(String id) {
    context
        .read<WasteTypeBloc>()
        .add(WasteTypeEvent.delete(id: id, token: token));
  }
}
