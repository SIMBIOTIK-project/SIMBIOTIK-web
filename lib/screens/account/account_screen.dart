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
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/utils/utils.dart';
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
  String token = '';
  List<UserModel> user = [];

  int currentPageUser = 1;
  int totalPagesUser = 1;

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
      _handleData(token);
    }
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
              } else if (state.status.isLoaded) {
                if (state.data != null) {
                  setState(() {
                    user = state.data!.result!.data!;
                    totalPagesUser = state.data!.result!.totalPages!;
                  });
                }
              }
            },
          )
        ],
        child: token.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Akun',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
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
                              'Data Nasabah/Admin/Owner',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const Gap(12.0),
                            _buildUserTable(context)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
      ),
    );
  }

  _buildUserTable(BuildContext context) {
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
                ],
                rows: user.map((user) {
                  return DataRow(
                    cells: [
                      DataCell(Text(user.idUser.toString())),
                      DataCell(Text(user.status.toString())),
                      DataCell(Text(user.name.toString())),
                      DataCell(Text(user.email.toString())),
                      DataCell(Text(user.phoneNumber.toString())),
                      DataCell(Text(user.nik.toString())),
                      DataCell(Text(user.address.toString())),
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
              onPressed: currentPageUser > 1
                  ? () {
                      _handleUserData(token, currentPageUser - 1);
                      setState(() {
                        currentPageUser--;
                      });
                    }
                  : null,
              child: const Text(
                'Sebelumnya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.biruSimbiotik,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onPressed: currentPageUser < totalPagesUser
                  ? () {
                      _handleUserData(token, currentPageUser + 1);
                      setState(() {
                        currentPageUser++;
                      });
                    }
                  : null,
              child: const Text(
                'Selanjutnya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        const Gap(20),
      ],
    );
  }

  _handleRegisterAccountDialog(BuildContext context) {
    showDialog(
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
  }

  _handleData(String token) {
    context.read<UserBloc>().add(UserEvent.fetch(token: token));
  }

  _handleUserData(String token, int? page) {
    context.read<UserBloc>().add(
          UserEvent.fetch(
            token: token,
            page: page,
          ),
        );
  }
}
