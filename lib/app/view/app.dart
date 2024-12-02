// ignore_for_file: lines_longer_than_80_chars

import 'package:admin/dashboard/view/pages/dashboard_screen.dart';
import 'package:admin/l10n/l10n.dart';
import 'package:admin/shared/theme/theme.dart';
import 'package:admin/shared/theme/util.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Use with Google Fonts package to use downloadable fonts
    final textTheme = createTextTheme(context, 'Lato', 'Lato');

    final theme = MaterialTheme(textTheme);

    return MaterialApp(
      // theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      theme: theme.light(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const DashboardScreen(),
    );
  }
}
