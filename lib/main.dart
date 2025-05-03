import 'package:bmimvvm/core/providers/theme_provider.dart';
import 'package:bmimvvm/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/bmi_calculator/view/home_view.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_)=>ThemeProvider()),
        // bmi provvider
      ],

      child: Consumer<ThemeProvider>(builder: (context,themeProvider,_){
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          title: "BMI Calculator",
          themeMode: themeProvider.themeMode,
          theme: AppTheme.getLightTheme(),
          darkTheme: AppTheme.getDarkTheme(),
          home: const HomeView(),


        );
      }),
    );
  }
}
