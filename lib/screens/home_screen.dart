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

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_web/core/blocs/blocs.dart';
import 'package:simbiotik_web/data/repository/repository.dart';
import 'package:simbiotik_web/gen/assets.gen.dart';
import 'package:simbiotik_web/screens/screens.dart';
import 'package:simbiotik_web/screens/waste_type/waste_type.dart';
import 'package:simbiotik_web/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  final String? token;
  const HomeScreen({
    this.token,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DepositBloc(DepositRepository()),
        ),
        BlocProvider(
          create: (context) => WithdrawalBloc(WithdrawalRepository()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(LogoutRepository()),
        ),
        BlocProvider(
          create: (context) => UserBloc(UserRepository()),
        ),
        BlocProvider(
          create: (context) => WasteTypeBloc(WasteTypeRepository()),
        )
      ],
      child: const HomeScreenContent(),
    );
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({
    super.key,
  });

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LogoutBloc, LogoutState>(
        listener: (context, state) {
          if (state.status.isLoaded) {
            Navigator.of(context).pop();
            GoRouter.of(context).pushReplacement(
              '/',
            );
            _logout(context);
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              controller: sideMenu,
              style: SideMenuStyle(
                displayMode: SideMenuDisplayMode.auto,
                showHamburger: true,
                hoverColor: Colors.teal[100],
                selectedHoverColor: Colors.teal[100],
                selectedColor: Colors.teal,
                selectedTitleTextStyle: const TextStyle(color: Colors.white),
                selectedIconColor: Colors.white,
              ),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Assets.images.simbiotik2.image(
                          height: 40,
                          width: 40,
                        ),
                        ResponsiveVisibility(
                          visible: false,
                          visibleWhen: const [
                            Condition.largerThan(name: MOBILE)
                          ],
                          child: Row(
                            children: [
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
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 8,
                    endIndent: 8,
                  ),
                ],
              ),
              footer: Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                          Gap(8.0),
                          Text(
                            'Keluar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: const Text('Keluar'),
                          content: const Text(
                              'Apakah anda yakin akan keluar dari Dashboard?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                context.read<LogoutBloc>().add(
                                      const LogoutEvent.logout(),
                                    );
                              },
                              child: const Text('Ya, Keluar'),
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
                  },
                ),
              ),
              items: [
                SideMenuItem(
                  title: 'Beranda',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.home),
                ),
                SideMenuItem(
                  title: 'Jenis Sampah',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.list),
                ),
                SideMenuItem(
                  title: 'Akun',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.people),
                ),
              ],
            ),
            const VerticalDivider(
              width: 0,
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  DashboardScreen(),
                  WasteTypeScreen(),
                  AccountScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
