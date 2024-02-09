import 'package:demo_protocal/presentation/detail_screen.dart';
import 'package:demo_protocal/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xfffaf6f3),
      ),
      home: HomeScreen(),
    );
  }
}
