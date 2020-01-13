import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_only/my_home_page.dart';
import "package:get_it_only/app_global_state.dart";
import "package:get_it_only/just_a_lazy_loading_test.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GetIt sl = GetIt.instance;
    sl.registerLazySingleton<AppGlobalState>(() => AppGlobalState());

    sl.registerLazySingleton<JustALazyLoadingTest1>(() => JustALazyLoadingTest1());
    sl.registerLazySingleton<JustALazyLoadingTest2>(() => JustALazyLoadingTest2());
    sl.registerLazySingleton<JustALazyLoadingTest3>(() => JustALazyLoadingTest3());
    sl.registerLazySingleton<JustALazyLoadingTest4>(() => JustALazyLoadingTest4());
    sl.registerLazySingleton<JustALazyLoadingTest5>(() => JustALazyLoadingTest5());
    sl.registerLazySingleton<JustALazyLoadingTest6>(() => JustALazyLoadingTest6());
    sl.registerLazySingleton<JustALazyLoadingTest7>(() => JustALazyLoadingTest7());
    sl.registerLazySingleton<JustALazyLoadingTest8>(() => JustALazyLoadingTest8());
    sl.registerLazySingleton<JustALazyLoadingTest9>(() => JustALazyLoadingTest9());
    sl.registerLazySingleton<JustALazyLoadingTest10>(() => JustALazyLoadingTest10());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (_) => MyHomePage(title: 'Total open pages: #1'),
      },
    );
  }
}