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
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/user/user_bloc.dart';
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/widgets/paginations.dart';
import 'package:simbiotik_web/widgets/register_dialog.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountScreenContent();
  }
}

class AccountScreenContent extends StatefulWidget {
  const AccountScreenContent({super.key});

  @override
  State<AccountScreenContent> createState() => _AccountScreenContentState();
}

class _AccountScreenContentState extends State<AccountScreenContent> {
  List<UserModel> user = [];

  int currentPageUser = 1;
  int totalPagesUser = 1;
  String? selectedStatus;

  final TextEditingController _keyword = TextEditingController();

  @override
  void initState() {
    super.initState();
    _handleData('');
  }

  @override
  void dispose() {
    _keyword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocListener(
          listeners: [
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state.status.isLoading) {
                  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.status.isError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Gagal memuat memperbarui data',
                      ),
                    ),
                  );
                }
              },
            )
          ],
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.status.isError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Gagal memuat data'),
                      const Gap(8.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          _handleData('');
                        },
                        child: const Text('Ulangi'),
                      )
                    ],
                  ),
                );
              }
              if (state.status.isLoaded) {
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
                              'Akun',
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
                              ),
                            ),
                            onPressed: () {
                              _handleRegisterAccountDialog(context);
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
                                'Data Pengguna',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const Gap(12.0),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                          child: TextField(
                                            controller: _keyword,
                                            decoration: InputDecoration(
                                              prefixIcon:
                                                  const Icon(Icons.search),
                                              hintText: 'Cari perngguna',
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                onPressed: () {
                                                  _keyword.clear();
                                                  _handleData('');
                                                },
                                                icon: const Icon(Icons.clear),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: DropdownButtonFormField<String>(
                                        value: selectedStatus,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 12),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        hint: const Text('Status'),
                                        items: const [
                                          DropdownMenuItem(
                                            value: null,
                                            child: Text('Semua'),
                                          ),
                                          DropdownMenuItem(
                                            value: 'admin',
                                            child: Text('ADMIN'),
                                          ),
                                          DropdownMenuItem(
                                            value: 'owner',
                                            child: Text('OWNER'),
                                          ),
                                          DropdownMenuItem(
                                            value: 'nasabah',
                                            child: Text('NASABAH'),
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedStatus = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const Gap(8),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                    ),
                                    onPressed: () {
                                      currentPageUser = 1;

                                      _handleData(
                                        _keyword.text.trim(),
                                      );
                                    },
                                    child: const Text(
                                      'Cari',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              _buildUserTable(context, state.data?.result)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            },
          )),
    );
  }

  _buildUserTable(BuildContext context, UserPageModel? data) {
    user = data?.data ?? [];
    totalPagesUser = data?.totalPages ?? 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            final double columnSpacing = constraints.maxWidth * 0.1;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: columnSpacing,
                columns: const [
                  DataColumn(
                      label: Text(
                    "No",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "ID Pengguna",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Status',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Nama',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Nomor Telepon',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'NIK',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Alamat',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    'Aksi',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )),
                ],
                rows: user.asMap().entries.map((entry) {
                  final index = entry.key;
                  final user = entry.value;

                  final rowNumber = (currentPageUser - 1) * 10 + index + 1;
                  return DataRow(
                    cells: [
                      DataCell(
                        Text(rowNumber.toString()),
                      ),
                      DataCell(
                        Text(
                          user.idUser != null ? user.idUser.toString() : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.status != null ? user.status.toString() : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.name != null ? user.name.toString() : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.email != null ? user.email.toString() : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.phoneNumber != null
                              ? user.phoneNumber.toString()
                              : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.nik != null ? user.nik.toString() : '-',
                        ),
                      ),
                      DataCell(
                        Text(
                          user.address != null ? user.address.toString() : '-',
                        ),
                      ),
                      DataCell(Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              bool? result;
                              result = await showDialog(
                                context: context,
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: const Text('Hapus Akun'),
                                    content: const Text(
                                      'Apakah anda yakin akan menghapus data?',
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(dialogContext).pop();
                                        },
                                        child: const Text('Tidak'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(dialogContext).pop(true);
                                        },
                                        child: const Text('Ya, Hapus'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              if (result == true) {
                                _handleDeleteData(user.id.toString());
                              }
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                          const Gap(8.0),
                          InkWell(
                            onTap: () async {
                              final result = await _handleEditAccountDialog(
                                context,
                                user,
                              );

                              if (result == true) {
                                _handleData(_keyword.text.trim());
                                _handleUserData(currentPageUser);
                              }
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
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
        Paginations(
            currentPage: currentPageUser,
            totalPages: totalPagesUser,
            currentItems: user.length,
            totalItems: data?.totalData,
            onPageChanged: (page) {
              _handleUserData(page);
            }),
        const Gap(20),
      ],
    );
  }

  _handleRegisterAccountDialog(BuildContext context) async {
    final bool? result = await showDialog(
      context: context,
      builder: (dialogContext) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: const RegisterDialog(),
        );
      },
    );

    if (result == true) {
      _handleData('');
      _handleUserData(1);
    }
  }

  _handleData(String? keyword) {
    context.read<UserBloc>().add(UserEvent.fetch(
          name: keyword,
          status: selectedStatus,
        ));
  }

  _handleUserData(int? page) {
    context.read<UserBloc>().add(
          UserEvent.fetch(
            page: page,
            status: selectedStatus,
          ),
        );
  }

  _handleDeleteData(String id) {
    context.read<UserBloc>().add(
          UserEvent.delete(
            id: id,
          ),
        );
  }

  _handleEditAccountDialog(BuildContext context, UserModel user) async {
    final bool? result = await showDialog(
      context: context,
      builder: (dialogContext) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: RegisterDialog(
            user: user,
            isEdit: true,
          ),
        );
      },
    );

    return result;
  }
}
