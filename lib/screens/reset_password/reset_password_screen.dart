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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:simbiotik_web/core/blocs/auth/reset_password_bloc.dart';
import 'package:simbiotik_web/utils/app_colors.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResetPasswordScreenContent();
  }
}

class ResetPasswordScreenContent extends StatefulWidget {
  const ResetPasswordScreenContent({super.key});

  @override
  State<ResetPasswordScreenContent> createState() =>
      _ResetPasswordScreenContentState();
}

class _ResetPasswordScreenContentState
    extends State<ResetPasswordScreenContent> {
  late TextEditingController _userIdController;
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmationNewPasswordController;
  bool _obsecurePassword = true;
  bool _obsecurePassword1 = true;

  @override
  void initState() {
    super.initState();
    _userIdController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmationNewPasswordController = TextEditingController();

    _userIdController.addListener(_updateState);
    _newPasswordController.addListener(_updateState);
    _confirmationNewPasswordController.addListener(_updateState);
  }

  void _updateState() {
    setState(() {
      // This will trigger re-rendering to update the button's state
    });
  }

  @override
  void dispose() {
    _userIdController.removeListener(_updateState);
    _newPasswordController.removeListener(_updateState);
    _confirmationNewPasswordController.removeListener(_updateState);
    _userIdController.dispose();
    _newPasswordController.dispose();
    _confirmationNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        if (state.status.isLoading) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Gagal mengubah kata sandi akun!. Error: ${state.error.toString()} '),
            ),
          );
        } else if (state.status.isLoaded) {
          _userIdController.clear();
          _newPasswordController.clear();
          _confirmationNewPasswordController.clear();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Kata Sandi berhasil diubah'),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Gap(40),
              const Text(
                'Masuk ID',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
                  controller: _userIdController,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan ID',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                  ),
                ),
              ),
              const Gap(8.0),
              const Text(
                'Kata Sandi Baru',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Kata Sandi',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obsecurePassword = !_obsecurePassword;
                          });
                        },
                        child: Icon(
                          _obsecurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 20,
                        ),
                      )),
                  obscureText: _obsecurePassword,
                ),
              ),
              const Gap(8.0),
              const Text(
                'Konfirmasi Kata Sandi Baru',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
                  controller: _confirmationNewPasswordController,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Konfirmasi Kata Sandi',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obsecurePassword1 = !_obsecurePassword1;
                          });
                        },
                        child: Icon(
                          _obsecurePassword1
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 20,
                        ),
                      )),
                  obscureText: _obsecurePassword1,
                ),
              ),
              if (_confirmationNewPasswordController.text !=
                  _newPasswordController.text)
                const Text(
                  'Password tidak sesuai!',
                  style: TextStyle(color: Colors.red),
                ),
              const Gap(8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.hijauSimbiotik,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: (_userIdController.text.isNotEmpty &&
                        _newPasswordController.text.isNotEmpty &&
                        _confirmationNewPasswordController.text.isNotEmpty &&
                        (_confirmationNewPasswordController.text ==
                            _newPasswordController.text))
                    ? () {
                        showDialog(
                          context: context,
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                              title: const Text('Ubah Kata Sandi'),
                              content: const Text(
                                  'Apakah anda yakin akan mengubah kata sandi?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    context
                                        .read<ResetPasswordBloc>()
                                        .add(ResetPasswordEvent.reset(
                                          id: _userIdController.text,
                                          newPassword:
                                              _newPasswordController.text,
                                          confirmationNewPassword:
                                              _confirmationNewPasswordController
                                                  .text,
                                        ));
                                    Navigator.of(dialogContext).pop();
                                  },
                                  child: const Text('Ya, Ubah'),
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
                      }
                    : null,
                child: const Text(
                  'Ubah Kata Sandi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
