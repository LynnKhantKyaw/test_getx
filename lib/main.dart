import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage_pro/get_storage_pro.dart';
import 'package:test_getx/translation/translation_controller.dart';
import 'package:test_getx/translation/translation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStoragePro.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      translations: TranslationController(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      home: TranslationScreen(), //CounterScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('You have pushed the button this many times:')],
        ),
      ),
    );
  }
}
