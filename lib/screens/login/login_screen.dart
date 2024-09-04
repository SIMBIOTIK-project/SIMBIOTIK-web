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
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/auth/auth.dart';
import 'package:simbiotik_web/core/routers/routers.dart';
import 'package:simbiotik_web/data/repository/auth_repository.dart';
import 'package:simbiotik_web/gen/assets.gen.dart';
import 'package:simbiotik_web/models/models.dart';
import 'package:simbiotik_web/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreenContent();
  }
}

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({super.key});

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obsecurePassword = true;

  _savedToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Assets.images.simbiotik2.image(
              height: 50,
              width: 50,
            ),
            Text(
              'SIMBIO',
              style: GoogleFonts.sora(
                textStyle: const TextStyle(
                  color: AppColors.hijauSimbiotik,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'TIK',
              style: GoogleFonts.sora(
                textStyle: const TextStyle(
                  color: AppColors.biruSimbiotik,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            const Gap(8.0),
            Text(
              'Dashboard',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => AuthBloc(AuthRepository()),
        child: ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          columnMainAxisAlignment: MainAxisAlignment.start,
          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: ResponsiveVisibility(
                visible: false,
                visibleWhen: const [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.images.designBackground.image(),
                        Text(
                          '''"Sistem Informasi Manajemen Bank Sampah dengan IoT Timbangan dan Kas Keuangan merupakan solusi inovatif yang mengintegrasikan teknologi timbangan pintar dan manajemen keuangan otomatis untuk pengelolaan bank sampah. Sistem ini memungkinkan pencatatan berat sampah dan transaksi keuangan secara real-time dan akurat, meningkatkan efisiensi operasional dan transparansi keuangan. Dengan pendekatan ini, bank sampah dapat lebih mudah mengelola pengumpulan sampah dan keuangan, mendukung upaya keberlanjutan lingkungan secara lebih efektif."''',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.aBeeZee(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Masuk',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const Gap(40.0),
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
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  hintText: 'Masukkan Email',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 12.0,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(8.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(
                                  8.0,
                                ),
                              ),
                              height: 40.0,
                              padding: const EdgeInsets.fromLTRB(
                                8,
                                4,
                                8,
                                4,
                              ),
                              child: TextFormField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                    hintText: 'Masukkan Password',
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _obsecurePassword =
                                              !_obsecurePassword;
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
                            const Gap(40),
                            BlocConsumer<AuthBloc, AuthState>(
                              listener: (context, state) {
                                if (state.status.isLoaded) {
                                  if (state.data?.status ==
                                      StatusUser.owner.value) {
                                    if (state.token != null) {
                                      _savedToken(state.token!);
                                    }
                                    GoRouter.of(context).go(
                                      AppRouterConstants.homeScreen,
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Silahkan masuk menggunakan akun owner!'),
                                      ),
                                    );
                                  }
                                } else if (state.status.isError) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Gagal masuk, silahkan periksa kembali email atau password!'),
                                    ),
                                  );
                                }
                              },
                              builder: (context, state) {
                                if (state.status.isLoading) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.hijauSimbiotik,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        )),
                                    onPressed: () {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.login(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                            ),
                                          );
                                    },
                                    child: const Text(
                                      'Masuk',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
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
                      const Text('© 2024 All Rights Reserved')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
