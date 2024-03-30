import 'package:flutter/material.dart';
import 'package:flutter_link_feature_app/presentation/home_screen/home_screen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

import 'data/model/social_media_link_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // var directory = await getApplicationDocumentsDirectory();
  // Hive.init(directory.path);
  await Hive.initFlutter();
  Hive.registerAdapter(SocialMediaLinkAdapter()); // Register the adapter
  await Hive.openBox<SocialMediaLink>('social_media_links'); // Open the box
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
