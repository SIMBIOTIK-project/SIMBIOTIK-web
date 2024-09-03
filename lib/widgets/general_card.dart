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
import 'package:gap/gap.dart';
import 'package:simbiotik_web/utils/utils.dart';

class GeneralCard extends StatelessWidget {
  final Widget image;
  final String title;
  final double value;
  final String? note;
  const GeneralCard({
    required this.image,
    required this.title,
    required this.value,
    this.note,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.teal,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                const Gap(16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(4.0),
                      ],
                    ),
                    Text(
                      formatCurrency(
                        (value),
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Update Terakhir: ${formattedDate(DateTime.now().toString())}',
                      style: const TextStyle(
                          fontSize: 9,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 4,
            right: 16,
            child: Text(
              '* ${note ?? '-'}',
              style: const TextStyle(
                  fontSize: 9,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
