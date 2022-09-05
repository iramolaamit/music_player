import 'package:flutter/material.dart';
class AppTheme{
  static ThemeData lightTheme({required BuildContext context}){
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5,
              // color: currentColor()
        )
        ),
      ),
      // progressIndicatorTheme:  ProgressIndicatorTheme.,
      iconTheme: IconThemeData(
color: Colors.grey[800],
        size: 24.0,
        opacity: 1
      ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
        brightness:  Brightness.light,
        primary: Colors.grey[800],
        // secondary: currentTheme.currentColor(),
      ),
        listTileTheme : ListTileThemeData(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(7.0),
    ),
    ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
    );
  }
static ThemeData darkTheme({required BuildContext context}){
    return ThemeData(

    );
}
}