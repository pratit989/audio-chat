import 'package:audio_chat/globals.dart';
import 'package:audio_chat/routes.dart';
import 'package:audio_chat/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Globals.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Chat',
      theme: AudioTheme.dartTheme(),
      onGenerateRoute: AppRoutes.routes,
    );
  }
}
