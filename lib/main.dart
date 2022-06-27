import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:platform_6_2/pages/home_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(supportedLocales: const [Locale("en","US"),Locale("ru","RU"),Locale("uz","UZ"),Locale("fr","FR"),Locale("ja","JA")],
      path: "assets/translations",
      fallbackLocale: const Locale('en',"US"),child: const MyApp(),
  ));


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        HomePage.id : (context) => const HomePage(),
      },
    );
  }
}
