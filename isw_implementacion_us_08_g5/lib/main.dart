import 'package:flutter/material.dart';
import 'package:isw_implementacion_us_08_g5/screens/pedir_lo_que_sea/main_screen.dart';
import 'package:provider/provider.dart';

import 'providers/DireccionRetiroProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: DireccionRetiroProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PedirLoQueSeaMainScreen(),
      ),
    );
  }
}
