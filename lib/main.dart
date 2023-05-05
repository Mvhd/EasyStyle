import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UI/loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(EasyStyle(savedThemeMode: savedThemeMode,));
}

class EasyStyle extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const EasyStyle({Key? key,this.savedThemeMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;
    return platform == TargetPlatform.android
        ? AdaptiveTheme(
            light: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.grey.shade900,
              backgroundColor: Colors.transparent,
            ),
            dark: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.grey.shade300,
              backgroundColor: Colors.grey.shade900.withOpacity(0.7),
            ),
            initial: savedThemeMode ?? AdaptiveThemeMode.light,
            builder: (theme, darkTheme) => MaterialApp(
              title: 'Easy Style',
              theme: theme,
              darkTheme: darkTheme,
              home: const LoginPage(),
            ),
          )
        : platform == TargetPlatform.iOS
            ? CupertinoAdaptiveTheme(
                light: CupertinoThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.grey.shade800,
                ),
                dark: CupertinoThemeData(
                  brightness: Brightness.dark,
                  primaryColor: Colors.grey.shade200,
                ),
                initial: savedThemeMode ?? AdaptiveThemeMode.light,
                builder: (theme) => CupertinoApp(
                  title: '',
                  theme: theme,
                  //darkTheme: darkTheme,
                  home: const LoginPage(),
                ),
              )
            : const SizedBox();
  }
}
