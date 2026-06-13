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
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/core/blocs/waste_type/waste_type.dart';
import 'package:simbiotik_web/data/data.dart';
import 'package:simbiotik_web/models/models.dart';

class AddWasteTypeDialog extends StatelessWidget {
  final WasteTypesModel? data;
  const AddWasteTypeDialog({
    this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WasteTypeBloc(WasteTypeRepository()),
      child: AddWasteTypeDialogContent(
        data: data,
      ),
    );
  }
}

class AddWasteTypeDialogContent extends StatefulWidget {
  final WasteTypesModel? data;
  const AddWasteTypeDialogContent({
    this.data,
    super.key,
  });

  @override
  State<AddWasteTypeDialogContent> createState() =>
      _AddWasteTypeDialogContentState();
}

class _AddWasteTypeDialogContentState extends State<AddWasteTypeDialogContent> {
  final TextEditingController _type = TextEditingController();
  final TextEditingController _price = TextEditingController();
  String token = '';

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _type.text = widget.data!.type!;
      _price.text = widget.data!.price!.toString();
    }

    _type.addListener(_refreshButton);
    _price.addListener(_refreshButton);
  }

  void _refreshButton() {
    setState(() {});
  }

  @override
  void dispose() {
    _type.removeListener(_refreshButton);
    _price.removeListener(_refreshButton);
    _type.dispose();
    _price.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SelectionArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          constraints: const BoxConstraints(
            maxWidth: 676,
            minWidth: 400,
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.data != null
                          ? 'Edit Jenis Sampah'
                          : 'Tambah Jenis Sampah',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
              const Gap(20),
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
                  ),
                ],
              ),
              const Gap(4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: _type,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Jenis Sampah',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Gap(12),
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
                  ),
                ],
              ),
              const Gap(4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: _price,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    TextInputFormatter.withFunction(
                      (oldValue, newValue) {
                        if (newValue.text.isEmpty) {
                          return newValue;
                        }

                        final number =
                            newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

                        final formatted = NumberFormat.decimalPattern('id')
                            .format(int.parse(number));

                        return TextEditingValue(
                          text: 'Rp $formatted',
                          selection: TextSelection.collapsed(
                            offset: ('Rp $formatted').length,
                          ),
                        );
                      },
                    ),
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Harga',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Gap(32),
              BlocConsumer<WasteTypeBloc, WasteTypeState>(
                listener: (context, state) {
                  if (state.status.isLoaded) {
                    Navigator.of(context).pop(true);
                    Navigator.of(context).pop(true);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Jenis Sampah Berhasil Ditambahkan!',
                        ),
                      ),
                    );
                  } else if (state.status.isError) {
                    Navigator.of(context).pop();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Gagal Menambahkan Jenis Sampah!',
                        ),
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: (_type.text.isNotEmpty &&
                              _price.text.isNotEmpty)
                          ? () {
                              showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return AlertDialog(
                                    title: Text(
                                      widget.data != null
                                          ? 'Edit Jenis Sampah'
                                          : 'Tambah Jenis Sampah',
                                    ),
                                    content: const Text(
                                      'Apakah anda yakin akan menyimpan data?',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext);
                                        },
                                        child: const Text('Tidak'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          if (widget.data != null) {
                                            final price = _price.text
                                                .replaceAll(
                                                    RegExp(r'[^0-9]'), '');
                                            context.read<WasteTypeBloc>().add(
                                                  WasteTypeEvent.edit(
                                                    id: widget.data!.id
                                                        .toString(),
                                                    type: _type.text,
                                                    price: price,
                                                  ),
                                                );
                                          } else {
                                            final price = _price.text
                                                .replaceAll(
                                                    RegExp(r'[^0-9]'), '');
                                            context.read<WasteTypeBloc>().add(
                                                  WasteTypeEvent.add(
                                                    type: _type.text,
                                                    price: price,
                                                  ),
                                                );
                                          }
                                        },
                                        child: const Text('Ya, Simpan'),
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
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
