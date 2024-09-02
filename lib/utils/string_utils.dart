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

import 'package:intl/intl.dart';

String getInitials(String name) {
  List<String> nameParts = name.split(" ");
  String initials = "";
  if (nameParts.length > 1) {
    initials = nameParts[0][0] + nameParts[1][0];
  } else if (nameParts.length == 1) {
    initials = nameParts[0][0];
  }
  return initials.toUpperCase();
}

String formatCurrency(double amount) {
  final formatCurrency = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  if (amount >= 1000000000) {
    return '${(amount / 1000000000).toStringAsFixed(0)} Miliar';
  } else {
    return formatCurrency.format(amount);
  }
}

double parseOrZero(String? value) {
  return double.tryParse(value ?? '') ?? 0.0;
}

String formattedDate(String time) {
  final date = DateFormat('dd-MM-yyyy').format(
    DateTime.parse(time),
  );
  return date;
}
