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
import 'package:simbiotik_web/core/blocs/balance/balance_bloc.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/sodako/sodako_bloc.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/data/repository/balance_repository.dart';
import 'package:simbiotik_web/data/repository/sodako_repository.dart';
import 'package:simbiotik_web/gen/assets.gen.dart';
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/models/sodakos/sodakos.dart';
import 'package:simbiotik_web/utils/utils.dart';
import 'package:simbiotik_web/widgets/paginations.dart';
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
        ),
        BlocProvider<WasteTypeBloc>(
          create: (context) => WasteTypeBloc(
            WasteTypeRepository(),
          ),
        ),
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
  List<DepositModel> deposit = [];
  List<WithdrawalModel> allWithdrawal = [];
  List<WithdrawalModel> withdrawal = [];
  List<SodakoModel> sodako = [];

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

  DateTime? depositDate;
  DateTime? withdrawalDate;
  DateTime? sodakoDate;
  DateTimeRange? depositRange;
  DateTimeRange? withdrawalRange;
  DateTimeRange? sodakoRange;
  String? depositWasteType;
  String? depositWasteTypeId;

  bool isWithdrawalFiltered = false;
  bool isSodakoFiltered = false;

  @override
  void initState() {
    super.initState();
    _handleDepositData();
    _handleWithdrawalData();
    _handleBalanceData();
    _handleSodakoData();
    _handleWasteTypeData();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocListener(
        listeners: [
          BlocListener<DepositBloc, DepositState>(
            listener: (context, state) {
              if (state.status.isLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          BlocListener<WithdrawalBloc, WithdrawalState>(
            listener: (context, state) {
              if (state.status.isLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          BlocListener<SodakoBloc, SodakoState>(
            listener: (context, state) {
              if (state.status.isLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
        child: Padding(
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
                      const Wrap(
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
        ),
      ),
    );
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickWithdrawalDate(state.data!),
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        label: Text(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          withdrawalDate == null
                              ? 'Pilih Tanggal'
                              : formattedDate(
                                  withdrawalDate.toString(),
                                ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickWithdrawalRange(state.data!),
                        icon: const Icon(
                          Icons.date_range,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Pilih Range Tanggal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: _resetWithdrawalFilter,
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  final double columnSpacing = constraints.maxWidth * 0.26;
                  final perPage =
                      state.data?.result?.perPage ?? withdrawal.length;

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
                          'Nominal',
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
                      rows: withdrawal.asMap().entries.map((entry) {
                        final withdrawal = entry.value;
                        final index = entry.key;

                        final no = _calculateRowNumber(
                          currentPage: currentPageWithdrawal,
                          index: index,
                          perPage: perPage,
                        );
                        return DataRow(
                          cells: [
                            DataCell(
                              Text(
                                no.toString(),
                              ),
                            ),
                            DataCell(
                              Text(
                                withdrawal.user?.name ?? '-',
                              ),
                            ),
                            DataCell(
                              Text(
                                formatCurrency(
                                  double.parse(
                                    withdrawal.price.toString(),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                withdrawal.status.toString(),
                              ),
                            ),
                            DataCell(
                              Text(
                                withdrawal.createdBy.toString(),
                              ),
                            ),
                            DataCell(
                              Text(
                                formattedDate(
                                  withdrawal.createdAt.toString(),
                                ),
                              ),
                            ),
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
              Paginations(
                currentPage: currentPageWithdrawal,
                totalPages: totalPagesWithdrawal,
                currentItems: withdrawal.length,
                totalItems: state.data?.result?.totalData,
                onPageChanged: (page) {
                  setState(() {
                    currentPageWithdrawal = page;
                  });

                  _handlePaginationWithdrawal(page);
                },
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
                const Text('Data tidak ditemukan!'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleWithdrawalData();
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickDepositDate(state.data!),
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        label: Text(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          depositDate == null
                              ? 'Pilih Tanggal'
                              : formattedDate(
                                  depositDate.toString(),
                                ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickDepositRange(state.data!),
                        icon: const Icon(
                          Icons.date_range,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Pilih Range Tanggal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          const Text('Pilih Jenis Sampah'),
                          const Gap(2),
                          BlocBuilder<WasteTypeBloc, WasteTypeState>(
                            builder: (context, wasteState) {
                              final wasteTypes =
                                  wasteState.data?.result?.data ?? [];

                              return SizedBox(
                                width: 150,
                                height: 35,
                                child: DropdownButtonFormField<String?>(
                                  value: depositWasteType,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 12)),
                                  items: [
                                    const DropdownMenuItem(
                                      value: null,
                                      child: Text('Semua Jenis'),
                                    ),
                                    ...wasteTypes.map(
                                      (waste) => DropdownMenuItem(
                                        value: waste.id.toString(),
                                        child: Text(
                                          waste.type ?? '-',
                                        ),
                                      ),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      depositWasteTypeId = value;
                                      currentPageDeposit = 1;
                                    });

                                    _fetchDepositWithFilter();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: _resetDepositFilter,
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  final double columnSpacing = constraints.maxWidth * 0.2;
                  final perPage = state.data?.result?.perPage ?? deposit.length;

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: columnSpacing,
                      columns: const [
                        DataColumn(
                          label: Text(
                            "No",
                          ),
                        ),
                        DataColumn(
                            label: Text(
                          "Nama Pengguna",
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
                          'Nominal',
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
                      rows: deposit.asMap().entries.map((entry) {
                        final deposit = entry.value;
                        final index = entry.key;

                        final no = _calculateRowNumber(
                          currentPage: currentPageDeposit,
                          index: index,
                          perPage: perPage,
                        );
                        return DataRow(
                          cells: [
                            DataCell(Text(no.toString())),
                            DataCell(Text(deposit.user?.name ?? '-')),
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
              Paginations(
                currentPage: currentPageDeposit,
                totalPages: totalPagesDeposit,
                currentItems: deposit.length,
                totalItems: state.data?.result?.totalData,
                onPageChanged: (page) {
                  setState(() {
                    currentPageDeposit = page;
                  });

                  _handlePaginationDeposit(page);
                },
              ),
              const Gap(20),
            ],
          );
        } else if (state.status.isError) {
          print('Error ${state.error}');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Data tidak ditemukan!'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleDepositData();
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
                const Text('Data tidak ditemukan!'),
                const Gap(8.0),
                InkWell(
                  onTap: () {
                    _handleBalanceData();
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
          if (state.data?.result != null) {
            sodako = state.data!.result!.data!;
            totalPagesSodako = state.data!.result!.totalPages!;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickSodakoDate(state.data!),
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        label: Text(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          sodakoDate == null
                              ? 'Pilih Tanggal'
                              : formattedDate(
                                  sodakoDate.toString(),
                                ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _pickSodakoRange(state.data!),
                        icon: const Icon(
                          Icons.date_range,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Pilih Range Tanggal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton.icon(
                        onPressed: _resetSodakoFilter,
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return LayoutBuilder(builder: (context, constraints) {
                    final double columnSpacing = constraints.maxWidth * 0.25;
                    final perPage =
                        state.data?.result?.perPage ?? sodako.length;

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columnSpacing: columnSpacing,
                        columns: const [
                          DataColumn(
                            label: Text(
                              "No",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                          ),
                          DataColumn(
                            label: Text("ID Pengguna",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Nama",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          DataColumn(
                            label: Text("Nominal",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                          // DataColumn(
                          //   label: Text("Admin",
                          //       style: TextStyle(fontWeight: FontWeight.w900)),
                          // ),
                          DataColumn(
                            label: Text("Tanggal",
                                style: TextStyle(fontWeight: FontWeight.w900)),
                          ),
                        ],
                        rows: sodako.asMap().entries.map((entry) {
                          final item = entry.value;
                          final index = entry.key;
                          final no = _calculateRowNumber(
                            currentPage: currentPageSodako,
                            index: index,
                            perPage: perPage,
                          );
                          return DataRow(cells: [
                            DataCell(Text(no.toString())),
                            DataCell(Text(item.idUser ?? '-')),
                            DataCell(Text(item.user?.name ?? '-')),
                            DataCell(Text(formatCurrency(
                                double.parse(item.price.toString())))),
                            // DataCell(Text(item.user?.name ?? '-')),
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
              Paginations(
                currentPage: currentPageSodako,
                totalPages: totalPagesSodako,
                currentItems: sodako.length,
                totalItems: state.data?.result?.totalData,
                onPageChanged: (page) {
                  setState(() {
                    currentPageSodako = page;
                  });

                  _handlePaginationSodako(page);
                },
              ),
            ],
          );
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
                    _handleSodakoData();
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

  _handleDepositData() {
    context.read<DepositBloc>().add(
          const DepositEvent.fetchAll(),
        );
    context.read<DepositBloc>().add(
          const DepositEvent.fetch(),
        );
  }

  _handleWithdrawalData() {
    context.read<WithdrawalBloc>().add(
          const WithdrawalEvent.fetchAll(),
        );
    context.read<WithdrawalBloc>().add(
          const WithdrawalEvent.fetch(),
        );
  }

  _handlePaginationDeposit(int page) {
    currentPageDeposit = page;

    _fetchDepositWithFilter();
  }

  _handlePaginationWithdrawal(int page) {
    context.read<WithdrawalBloc>().add(WithdrawalEvent.fetch(
          page: page,
        ));
  }

  void _handleBalanceData() {
    context.read<BalanceBloc>().add(const BalanceEvent.fetch());
  }

  void _handleSodakoData() {
    context.read<SodakoBloc>().add(const SodakoEvent.fetch(
          idUser: '',
          page: 1,
        ));
  }

  void _handlePaginationSodako(int page) {
    context.read<SodakoBloc>().add(
          SodakoEvent.fetch(
            idUser: '',
            page: page,
          ),
        );
  }

  void _handleWasteTypeData() {
    context.read<WasteTypeBloc>().add(
          const WasteTypeEvent.fetch(),
        );
  }

  // Filter Deposit
  void _fetchDepositWithFilter() {
    context.read<DepositBloc>().add(
          DepositEvent.fetch(
            page: currentPageDeposit,
            wasteTypeId: depositWasteTypeId,
            date: depositDate?.toIso8601String().split('T').first,
            startDate: depositRange?.start.toIso8601String().split('T').first,
            endDate: depositRange?.end.toIso8601String().split('T').first,
          ),
        );
  }

  Future<void> _pickDepositDate(DepositResponseModel data) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: depositDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        depositDate = pickedDate;
        depositRange = null;
      });

      _fetchDepositWithFilter();
    }
  }

  Future<void> _pickDepositRange(DepositResponseModel data) async {
    final pickedRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime(2500),
        initialDateRange: depositRange,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        builder: (context, child) {
          return Center(
            child: SizedBox(
              width: 600,
              height: 400,
              child: child!,
            ),
          );
        });

    if (pickedRange != null) {
      setState(() {
        depositRange = pickedRange;
        depositDate = null;
      });

      _fetchDepositWithFilter();
    }
  }

  void _resetDepositFilter() {
    setState(() {
      depositDate = null;
      depositRange = null;
      depositWasteTypeId = null;
      currentPageDeposit = 1;
    });

    context.read<DepositBloc>().add(
          const DepositEvent.fetch(
            page: 1,
          ),
        );
  }

  // Filter Withdrawals
  void _fetchWithdrawalWithFilter() {
    context.read<WithdrawalBloc>().add(
          WithdrawalEvent.fetch(
            page: currentPageWithdrawal,
            date: withdrawalDate?.toIso8601String().split('T').first,
            startDate:
                withdrawalRange?.start.toIso8601String().split('T').first,
            endDate: withdrawalRange?.end.toIso8601String().split('T').first,
          ),
        );
  }

  Future<void> _pickWithdrawalDate(WithdrawalResponseModel data) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: withdrawalDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        withdrawalDate = pickedDate;
        withdrawalRange = null;
      });

      _fetchWithdrawalWithFilter();
    }
  }

  Future<void> _pickWithdrawalRange(WithdrawalResponseModel data) async {
    final pickedRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime(2500),
        initialDateRange: withdrawalRange,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        builder: (context, child) {
          return Center(
            child: SizedBox(
              width: 600,
              height: 400,
              child: child!,
            ),
          );
        });

    if (pickedRange != null) {
      setState(() {
        withdrawalRange = pickedRange;
        withdrawalDate = null;
      });

      _fetchWithdrawalWithFilter();
    }
  }

  void _resetWithdrawalFilter() {
    setState(() {
      withdrawalDate = null;
      withdrawalRange = null;
      currentPageWithdrawal = 1;
    });

    context.read<WithdrawalBloc>().add(
          const WithdrawalEvent.fetch(
            page: 1,
          ),
        );
  }

  // Filter Sodako
  void _fetchSodakoWithFilter() {
    context.read<SodakoBloc>().add(
          SodakoEvent.fetch(
            page: currentPageSodako,
            date: sodakoDate?.toIso8601String().split('T').first,
            startDate: sodakoRange?.start.toIso8601String().split('T').first,
            endDate: sodakoRange?.end.toIso8601String().split('T').first,
          ),
        );
  }

  Future<void> _pickSodakoDate(SodakoResponseModel data) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: sodakoDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        sodakoDate = pickedDate;
        sodakoRange = null;
      });

      _fetchSodakoWithFilter();
    }
  }

  Future<void> _pickSodakoRange(SodakoResponseModel data) async {
    final pickedRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime(2500),
        initialDateRange: sodakoRange,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        builder: (context, child) {
          return Center(
            child: SizedBox(
              width: 600,
              height: 400,
              child: child!,
            ),
          );
        });

    if (pickedRange != null) {
      setState(() {
        sodakoRange = pickedRange;
        sodakoDate = null;
      });

      _fetchSodakoWithFilter();
    }
  }

  void _resetSodakoFilter() {
    setState(() {
      isSodakoFiltered = false;
      sodakoDate = null;
      sodakoRange = null;
      currentPageSodako = 1;
    });

    context.read<SodakoBloc>().add(
          const SodakoEvent.fetch(
            idUser: '',
            page: 1,
          ),
        );
  }

  int _calculateRowNumber({
    required int currentPage,
    required int index,
    required int perPage,
  }) {
    return (currentPage - 1) * perPage + index + 1;
  }
}
