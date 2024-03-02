import 'package:flutter/material.dart';
import 'package:test/perms_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Permission Handler'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  locationPerms();
                },
                child: const Text('Location')),
            TextButton(
                onPressed: () {
                  storagePerms();
                },
                child: const Text('storagePerms')),
            TextButton(
                onPressed: () {
                  extStoragePerms();
                },
                child: const Text('extStoragePerms')),
            const Center(
              child: Text('Tap on Setting Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
