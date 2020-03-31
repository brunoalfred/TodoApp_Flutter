import 'dart:convert';
import 'dart:ffi';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(AppLocalizations.of(context).translate('first_string')),
      ),
      body: new Center(
        child: new Container(
          child:
              new Text(AppLocalizations.of(context).translate('second_string')),
        ),
      ),
    );
  }
}

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

//  Helper method to keep the code in the widgets concise
// Localizations are accessed using an InheritedWidget "of" syntax

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    // Load the Language JSON file from the "lang" folder
    String jsonString =
        await rootBundle.loadString("language/${locale.languageCode}.json");
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  //  This method will be called from every widget which needs a localized text
  String translate(String key) {
    return _localizedStrings[key];
  }
}

  
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ["en", "sw"].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // TODO: implement load
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
}
