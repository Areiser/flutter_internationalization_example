import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyLocalizations {
  MyLocalizations(Locale locale) {
    _nameToValue = _localeToNameToValue[locale.languageCode];
  }

  Map<String, String> _nameToValue;
  Map<String, Map<String, String>> _localeToNameToValue = {
    'en': <String, String>{               // English
      'helloWorld': 'Hello World',
    },
    'fr': <String, String>{               // French
      'helloWorld': 'Bonjour le monde',
    },
    // ...
  };

  static Future<MyLocalizations> load(Locale locale) {
    return new SynchronousFuture<MyLocalizations>(new MyLocalizations(locale));
  }

  static MyLocalizations of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

  String get helloWorld => _nameToValue['helloWorld'];
// ... more methods like get helloWorld
}

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  @override
  Future<MyLocalizations> load(Locale locale) => MyLocalizations.load(locale);

  @override
  bool shouldReload(MyLocalizationsDelegate old) => false;
}




