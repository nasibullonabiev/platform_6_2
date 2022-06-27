import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Expanded(child: Center(
              child: Text("flutter".tr(),style: const TextStyle(
                fontSize: 20
              ),),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: ElevatedButton(
                  onPressed: (){
                    context.locale = const Locale("en","US");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: const Text("English",style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                ),

                Expanded(child: ElevatedButton(
                  onPressed: (){context.locale = const Locale("fr","FR");},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: const Text("Korean",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
                ),
                Expanded(child: ElevatedButton(
                  onPressed: (){context.locale = const Locale("ja","JA");},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: const Text("Japanese",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
