import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tekber_130/AboutPage.dart'; 

void main() {
  testWidgets('AboutPage displays correct information', (WidgetTester tester) async {
    // Build the AboutPage widget.
    await tester.pumpWidget(MaterialApp(home: AboutPage()));

    // Verifikasi bahwa Nama lengkap muncul di layar.
    expect(find.text('Aliffia Isma Putri'), findsOneWidget);

    // Verifikasi bahwa NRP muncul di layar.
    expect(find.text('NRP: 5026221130'), findsOneWidget);

    // Verifikasi bahwa Departemen muncul di layar.
    expect(find.text('Departemen: Sistem Informasi'), findsOneWidget);

    // Verifikasi bahwa Tahun muncul di layar.
    expect(find.text('Tahun: 2022'), findsOneWidget);

    // Verifikasi bahwa Funfact muncul di layar.
    expect(find.text('Fun Fact: Lagi Sakit Gigi'), findsOneWidget);
  });
}
