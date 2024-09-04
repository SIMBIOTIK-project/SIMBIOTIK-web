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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/waste_type/waste_type.dart';
import 'package:simbiotik_web/data/data.dart';

class AddWasteTypeDialog extends StatefulWidget {
  const AddWasteTypeDialog({super.key});

  @override
  State<AddWasteTypeDialog> createState() => _AddWasteTypeDialogState();
}

class _AddWasteTypeDialogState extends State<AddWasteTypeDialog> {
  final TextEditingController _type = TextEditingController();
  final TextEditingController _price = TextEditingController();
  String token = '';

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
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WasteTypeBloc(
        WasteTypeRepository(),
      ),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SelectionArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            constraints: const BoxConstraints(maxWidth: 676, minWidth: 400),
            child: CustomScrollView(
              physics: const ScrollPhysics(),
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  sliver: SliverPersistentHeader(
                    delegate: _SectionHeaderDelegate(
                      title: 'Tambah Jenis Sampah',
                      onPressedClose: () {
                        Navigator.of(context).pop();
                      },
                      subtitle: null,
                    ),
                    pinned: true,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const Gap(10),
                      const Row(
                        children: [
                          Text(
                            'Jenis Sampah',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      const Gap(4),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        height: 40,
                        padding: const EdgeInsets.fromLTRB(
                          8,
                          4,
                          8,
                          4,
                        ),
                        child: TextFormField(
                          controller: _type,
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Jenis Sampah',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                            ),
                          ),
                        ),
                      ),
                      const Gap(8),
                      const Row(
                        children: [
                          Text(
                            'Harga',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      const Gap(4),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        height: 40,
                        padding: const EdgeInsets.fromLTRB(
                          8,
                          4,
                          8,
                          4,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[0-9]*[.,]?[0-9]*$')),
                          ],
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Harga',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _price.text = value;
                            });
                          },
                        ),
                      ),
                      const Gap(40),
                      BlocConsumer<WasteTypeBloc, WasteTypeState>(
                        listener: (context, state) {
                          if (state.status.isLoading) {
                            const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state.status.isLoaded) {
                            Navigator.of(context).pop(true);
                            Navigator.of(context).pop(true);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Akun baru berhasil ditambahkan!'),
                              ),
                            );
                          } else if (state.status.isError) {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Gagal menambahkan akun!'),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          return SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )),
                              onPressed: (_type.text.isNotEmpty &&
                                      _price.text.isNotEmpty)
                                  ? () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext dialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Tambah Jenis Sampah'),
                                            content: const Text(
                                                'Apakah anda yakin akan menyimpan data?'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  context
                                                      .read<WasteTypeBloc>()
                                                      .add(WasteTypeEvent.add(
                                                        token: token,
                                                        type: _type.text,
                                                        price: _price.text,
                                                      ));
                                                },
                                                child: const Text('Ya, Simpan'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(dialogContext)
                                                      .pop();
                                                },
                                                child: const Text('Tidak'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  : null,
                              child: const Text(
                                'Simpan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  final String? subtitle;

  /// Callback when close button is pressed.
  final VoidCallback onPressedClose;

  _SectionHeaderDelegate({
    required this.title,
    required this.onPressedClose,
    this.subtitle,
  });

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: subtitle != null ? 60 : 30,
      child: subtitle != null ? _buildTitleAndSubtitle() : _buildTitle(),
    );
  }

  Widget _buildTitle() => Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          SizedBox(
            width: 24.0,
            height: 24.0,
            child: InkWell(
              onTap: onPressedClose,
              child: const Icon(Icons.close),
            ),
          ),
        ],
      );

  Widget _buildTitleAndSubtitle() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          Text(
            subtitle!,
          ),
          const Spacer(),
          const Divider(
            height: 1,
          ),
        ],
      );

  @override
  double get maxExtent => subtitle != null ? 60 : 30;

  @override
  double get minExtent => subtitle != null ? 60 : 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
