import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/App/utils/themes.dart';

import 'App/app.dart';
import 'App/blocs/pets_bloc/pets_bloc.dart';
import 'App/blocs/themes_bloc/theme_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PetsBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state.switchValue ? AppThemes.appThemeData[AppTheme.darkTheme] : AppThemes.appThemeData[AppTheme.lightTheme],
            home: App(),
          );
        },
      ),
    );
  }
}
