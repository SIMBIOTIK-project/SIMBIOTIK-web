// Copyright 2026 ariefsetyonugroho
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

class Paginations extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final int? totalItems;
  final int? currentItems;
  final ValueChanged<int> onPageChanged;
  const Paginations({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
    this.totalItems,
    this.currentItems,
  });

  @override
  Widget build(BuildContext context) {
    final pages = _visiblePages();
    return Center(
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            children: [
              IconButton(
                onPressed: currentPage > 1
                    ? () => onPageChanged(currentPage - 1)
                    : null,
                icon: const Icon(Icons.chevron_left),
              ),
              ...pages.map(
                (page) {
                  if (page == -1) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text('...'),
                    );
                  }

                  final selected = page == currentPage;
                  return InkWell(
                    onTap: () => onPageChanged(page),
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selected ? Colors.teal : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.teal,
                        ),
                      ),
                      child: Text(
                        '$page',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: selected ? Colors.white : Colors.teal,
                        ),
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                onPressed: currentPage < totalPages
                    ? () => onPageChanged(currentPage + 1)
                    : null,
                icon: const Icon(Icons.chevron_right),
              )
            ],
          ),
          const Gap(8),
          if (totalItems != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                'Menampilkan ${currentItems ?? 0} data dari $totalItems data',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            )
        ],
      ),
    );
  }

  List<int> _visiblePages() {
    if (totalPages <= 7) {
      return List.generate(totalPages, (i) => i + 1);
    }

    final pages = <int>[1];

    if (currentPage > 4) {
      pages.add(-1);
    }

    for (int i = currentPage - 1; i <= currentPage + 1; i++) {
      if (i > 1 && i < totalPages) {
        pages.add(i);
      }
    }

    if (currentPage < totalPages - 3) {
      pages.add(-1);
    }

    pages.add(totalPages);
    return pages;
  }
}
