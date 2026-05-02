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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/balance/balance_bloc.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/sodako/sodako_bloc.dart';
import 'package:simbiotik_web/data/repository/balance_repository.dart';
import 'package:simbiotik_web/data/repository/deposit_repository.dart';
import 'package:simbiotik_web/data/repository/sodako_repository.dart';
import 'package:simbiotik_web/data/repository/withdrawal_repository.dart';
import 'package:simbiotik_web/gen/assets.gen.dart';
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/utils/utils.dart';
import 'package:simbiotik_web/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BalanceBloc>(
          create: (context) => BalanceBloc(
            BalanceRepository(),
          ),
        ),
        BlocProvider<DepositBloc>(
          create: (context) => DepositBloc(
            DepositRepository(),
          ),
        ),
        BlocProvider<WithdrawalBloc>(
          create: (context) => WithdrawalBloc(
            WithdrawalRepository(),
          ),
        ),
        BlocProvider<SodakoBloc>(
          create: (context) => SodakoBloc(
            SodakoRepository(),
          ),
        )
      ],
      child: const DashboardScreenContent(),
    );
  }
}

class DashboardScreenContent extends StatefulWidget {
  const DashboardScreenContent({super.key});

  @override
  State<DashboardScreenContent> createState() => _DashboardScreenContentState();
}

class _DashboardScreenContentState extends State<DashboardScreenContent>
    with SingleTickerProviderStateMixin {
  String token = '';
  List<DepositModel> allDeposit = [];
  List<DepositModel> deposit = [];
  List<WithdrawalModel> allWithdrawal = [];
  List<WithdrawalModel> withdrawal = [];

  late TabController _tabController;

  int _selectedTabBarIndex = 0;
  final _selectedColor = Colors.teal;
  final _tabs = [
    const Tab(
      text: 'Setoran',
    ),
    const Tab(
      text: 'Penarikan',
    ),
    const Tab(
      text: 'Sodakoh',
    ),
  ];

  int currentPageDeposit = 1;
  int totalPagesDeposit = 1;
  int currentPageWithdrawal = 1;
  int totalPagesWithdrawal = 1;
  int currentPageSodako = 1;
  int totalPagesSodako = 1;

  @override
  void initState() {
    super.initState();
    _loadToken();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      setState(() {
        token = prefs.getString('token') ?? '';
      });
      _handleDepositData(token);
      _handleWithdrawalData(token);
      _handleBalanceData(token);
      _handleSodakoData(token);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocListener(
          listeners: [
            BlocListener<DepositBloc, DepositState>(
              listener: (context, state) {
                if (state.allData != null) {
                  setState(() {
                    allDeposit = state.allData!;
                  });
                }
              },
            ),
            BlocListener<WithdrawalBloc, WithdrawalState>(
              listener: (context, state) {
                if (state.allData != null) {
                  setState(() {
                    allWithdrawal = state.allData!;
                  });
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
                      const Text(
                        'Beranda',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(40),
                      Expanded(
                        child: SingleChildScrollView(
                          // physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Detail Transaksi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Gap(8.0),
                                  Text(
                                    "* Geser ke kanan untuk melihat detail transaksi",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(12.0),
                              _buildGeneralCard(context),
                              const Gap(20.0),
                              const Text(
                                'Riwayat Transaksi',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const Gap(20),
                              Container(
                                height: kToolbarHeight - 20.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: TabBar(
                                  controller: _tabController,
                                  onTap: (index) {
                                    setState(() {
                                      _selectedTabBarIndex = index;
                                    });
                                  },
                                  tabs: _tabs,
                                  indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: _selectedColor),
                                  labelColor: Colors.white,
                                  indicatorPadding: EdgeInsets.zero,
                                  dividerColor: Colors.transparent,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                ),
                              ),
                              const Gap(12),
                              _selectedTabBarIndex == 0
                                  ? _buildDepositTable(context)
                                  : _selectedTabBarIndex == 1
                                      ? _buildWithdrawalTable(context)
                                      : _buildSodakoTable(context),
                            ],
                          ),
                        ),
                      )
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
        ));
  }

  _buildWithdrawalTable(BuildContext context) {
    return BlocBuilder<WithdrawalBloc, WithdrawalState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isLoaded) {
          if (state.data?.result != null) {
            withdrawal = state.data!.result!.data!;
            totalPagesWithdrawal = state.data!.result!.totalPages!;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  final double columnSpacing = constraints.maxWidth * 0.26;

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
                          'Harga',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Status',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Admin',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Tanggal',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        // DataColumn(
                        //     label: Text(
                        //   'Aksi',
                        //   style: TextStyle(fontWeight: FontWeight.w900),
                        // )),
                      ],
                      rows: withdrawal.map((withdrawal) {
                        return DataRow(
                          cells: [
                            DataCell(Text(withdrawal.idUser.toString())),
                            DataCell(Text(formatCurrency(
                                double.parse(withdrawal.price.toString())))),
                            DataCell(Text(withdrawal.status.toString())),
                            DataCell(Text(withdrawal.createdBy.toString())),
                            DataCell(Text(formattedDate(
                                withdrawal.createdAt.toString()))),
                            // DataCell(
                            //   InkWell(
                            //     onTap: () async {
                            //       bool? result;
                            //       result = await showDialog(
                            //         context: context,
                            //         builder: (BuildContext dialogContext) {
                            //           return AlertDialog(
                            //             title: const Text('Hapus Penarikan'),
                            //             content: const Text(
                            //                 'Apakah anda yakin akan menghapus data?'),
                            //             actions: <Widget>[
                            //               TextButton(
                            //                 onPressed: () {
                            //                   Navigator.of(dialogContext)
                            //                       .pop(true);
                            //                 },
                            //                 child: const Text('Ya, Hapus'),
                            //               ),
                            //               TextButton(
                            //                 onPressed: () {
                            //                   Navigator.of(dialogContext).pop();
                            //                 },
                            //                 child: const Text('Tidak'),
                            //               ),
                            //             ],
                            //           );
                            //         },
                            //       );

                            //       if (result == true) {
                            //         _handleDeleteWithdrawalData(
                            //             withdrawal.id.toString());
                            //         Future.delayed(
                            //             const Duration(milliseconds: 500), () {
                            //           _handlePaginationWithdrawal(token, 1);
                            //         });
                            //       }
                            //     },
                            //     child: const Icon(
                            //       Icons.delete,
                            //       color: Colors.red,
                            //     ),
                            //   ),
                            // )
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
                    onPressed: currentPageWithdrawal > 1
                        ? () {
                            _handlePaginationWithdrawal(
                                token, currentPageWithdrawal - 1);
                            setState(() {
                              currentPageWithdrawal--;
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
                    onPressed: currentPageWithdrawal < totalPagesWithdrawal
                        ? () {
                            _handlePaginationWithdrawal(
                                token, currentPageWithdrawal + 1);
                            setState(() {
                              currentPageWithdrawal++;
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
        } else if (state.status.isError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Data tidak ditemukan! ${state.error}'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleWithdrawalData(token);
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
        }

        return Container();
      },
    );
  }

  _buildDepositTable(BuildContext context) {
    return BlocBuilder<DepositBloc, DepositState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isLoaded) {
          if (state.data?.result != null) {
            deposit = state.data!.result!.data!;
            totalPagesDeposit = state.data!.result!.totalPages!;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  final double columnSpacing = constraints.maxWidth * 0.2;

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
                          'Jenis Sampah',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Berat (Kg)',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Harga',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Admin',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        DataColumn(
                            label: Text(
                          'Tanggal',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )),
                        // DataColumn(
                        //     label: Text(
                        //   'Aksi',
                        //   style: TextStyle(fontWeight: FontWeight.w900),
                        // )),
                      ],
                      rows: deposit.map((deposit) {
                        return DataRow(
                          cells: [
                            DataCell(Text(deposit.idUser.toString())),
                            DataCell(Text(deposit.wasteType!.type.toString())),
                            DataCell(Text(deposit.weight.toString())),
                            DataCell(Text(formatCurrency(
                                double.parse(deposit.price.toString())))),
                            DataCell(Text(deposit.createdBy.toString())),
                            DataCell(Text(
                                formattedDate(deposit.createdAt.toString()))),
                            // DataCell(
                            //   InkWell(
                            //     onTap: () async {
                            //       bool? result;
                            //       result = await showDialog(
                            //         context: context,
                            //         builder: (BuildContext dialogContext) {
                            //           return AlertDialog(
                            //             title: const Text('Hapus Setoran'),
                            //             content: const Text(
                            //                 'Apakah anda yakin akan menghapus data?'),
                            //             actions: <Widget>[
                            //               TextButton(
                            //                 onPressed: () {
                            //                   Navigator.of(dialogContext)
                            //                       .pop(true);
                            //                 },
                            //                 child: const Text('Ya, Hapus'),
                            //               ),
                            //               TextButton(
                            //                 onPressed: () {
                            //                   Navigator.of(dialogContext).pop();
                            //                 },
                            //                 child: const Text('Tidak'),
                            //               ),
                            //             ],
                            //           );
                            //         },
                            //       );

                            //       if (result == true) {
                            //         _handleDeleteDepositData(
                            //             deposit.id.toString());
                            //         _handlePaginationDeposit(token, 1);
                            //         //TODO: Fix this
                            //         _handlePaginationDeposit(token, 1);
                            //       }
                            //     },
                            //     child: const Icon(
                            //       Icons.delete,
                            //       color: Colors.red,
                            //     ),
                            //   ),
                            // )
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
                    onPressed: currentPageDeposit > 1
                        ? () {
                            _handlePaginationDeposit(
                                token, currentPageDeposit - 1);
                            setState(() {
                              currentPageDeposit--;
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
                    onPressed: currentPageDeposit < totalPagesDeposit
                        ? () {
                            _handlePaginationDeposit(
                                token, currentPageDeposit + 1);
                            setState(() {
                              currentPageDeposit++;
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
        } else if (state.status.isError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Data tidak ditemukan! ${state.error}'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleDepositData(token);
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
        }

        return Container();
      },
    );
  }

  _buildGeneralCard(BuildContext context) {
    return BlocBuilder<BalanceBloc, BalanceState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Data tidak ditemukan! ${state.error}'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleBalanceData(token);
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
        }
        return Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                GeneralCard(
                  image: Assets.images.cash.image(
                    width: 100,
                    height: 100,
                  ),
                  title: 'Total Saldo',
                  value: state.data?.result != null
                      ? (state.data!.result!.saldo!)
                      : 0,
                  note: 'Jumlah saldo diakumulasi otomatis',
                ),
                Gap(MediaQuery.of(context).size.width * .001),
                GeneralCard(
                  image: Assets.images.deposit.image(
                    width: 100,
                    height: 100,
                  ),
                  title: 'Total Setoran',
                  value: state.data?.result != null
                      ? (state.data!.result!.totalDeposit!)
                      : 0,
                  note: 'Jumlah saldo diakumulasi otomatis',
                ),
                Gap(MediaQuery.of(context).size.width * .001),
                GeneralCard(
                  image: Assets.images.withdrawal.image(
                    width: 100,
                    height: 100,
                  ),
                  title: 'Total Penarikan',
                  value: state.data?.result != null
                      ? (state.data!.result!.totalWithdrawal!)
                      : 0,
                  note: 'Jumlah saldo diakumulasi otomatis',
                ),
                Gap(MediaQuery.of(context).size.width * .001),
                GeneralCard(
                  image: Assets.images.withdrawal.image(
                    width: 100,
                    height: 100,
                  ),
                  title: 'Total Sodakoh',
                  value: state.data?.result != null
                      ? (state.data!.result!.totalSodako!)
                      : 0,
                  note: 'Jumlah saldo diakumulasi otomatis',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _buildSodakoTable(BuildContext context) {
    return BlocBuilder<SodakoBloc, SodakoState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status.isLoaded) {
          final sodako = state.data?.result?.data ?? [];

          totalPagesSodako = state.data?.result?.totalPages ?? 1;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return LayoutBuilder(builder: (context, constraints) {
                    final double columnSpacing = constraints.maxWidth * 0.25;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columnSpacing: columnSpacing,
                        columns: const [
                          DataColumn(
                            label: Text("ID Pengguna",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Nama",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Harga",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Admin",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Tanggal",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                        ],
                        rows: sodako.map<DataRow>((item) {
                          return DataRow(cells: [
                            DataCell(Text(item.idUser ?? '-')),
                            DataCell(Text(item.user?.name ?? '-')),
                            DataCell(Text(formatCurrency(
                                double.parse(item.price.toString())))),
                            DataCell(Text(item.user?.name ?? '-')),
                            DataCell(
                              Text(formattedDate(item.createdAt.toString())),
                            ),
                          ]);
                        }).toList(),
                      ),
                    );
                  });
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
                      ),
                      iconColor: Colors.white,
                    ),
                    onPressed: currentPageSodako > 1
                        ? () {
                            setState(() {
                              currentPageSodako--;
                            });
                            _handlePaginationSodako(token, currentPageSodako);
                          }
                        : null,
                    child: const Icon(Icons.arrow_left),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.biruSimbiotik,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      iconColor: Colors.white,
                    ),
                    onPressed: currentPageSodako < totalPagesSodako
                        ? () {
                            setState(() {
                              currentPageSodako++;
                            });
                            _handlePaginationSodako(token, currentPageSodako);
                          }
                        : null,
                    child: const Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ],
          );
        } else if (state.status.isError) {
          return Center(
            child: Text('Error: ${state.error}'),
          );
        }

        return Container();
      },
    );
  }

  _handleDepositData(String token) {
    context.read<DepositBloc>().add(
          DepositEvent.fetchAll(token: token),
        );
    context.read<DepositBloc>().add(
          DepositEvent.fetch(token: token),
        );
  }

  _handleWithdrawalData(String token) {
    context.read<WithdrawalBloc>().add(
          WithdrawalEvent.fetchAll(token: token),
        );
    context.read<WithdrawalBloc>().add(
          WithdrawalEvent.fetch(token: token),
        );
  }

  _handlePaginationDeposit(String token, int page) {
    context.read<DepositBloc>().add(DepositEvent.fetch(
          token: token,
          page: page,
        ));
  }

  _handlePaginationWithdrawal(String token, int page) {
    context.read<WithdrawalBloc>().add(WithdrawalEvent.fetch(
          token: token,
          page: page,
        ));
  }

  _handleDeleteWithdrawalData(String id) {
    context
        .read<WithdrawalBloc>()
        .add(WithdrawalEvent.delete(id: id, token: token));
  }

  _handleDeleteDepositData(String id) {
    context.read<DepositBloc>().add(DepositEvent.delete(id: id, token: token));
  }

  void _handleBalanceData(String token) {
    context.read<BalanceBloc>().add(BalanceEvent.fetch(token: token));
  }

  void _handleSodakoData(String token) {
    context.read<SodakoBloc>().add(SodakoEvent.fetch(
          token: token,
          idUser: '',
          page: 1,
        ));
  }

  void _handlePaginationSodako(String token, int page) {
    context.read<SodakoBloc>().add(
          SodakoEvent.fetch(
            token: token,
            idUser: '',
            page: page,
          ),
        );
  }
}
