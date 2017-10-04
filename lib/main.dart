import 'package:flutter/material.dart';
import 'package:flutter_internationalization_example/my_localizations.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Localization Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Localization Demo'),
      localizationsDelegates: <LocalizationsDelegate>[
        new MyLocalizationsDelegate(),
      ],
      supportedLocales: <Locale>[
        // US English - remove this to see french text or vice versa
        const Locale('en', 'US'),
        const Locale('fr', 'CA'), // Candian French
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(MyLocalizations.of(context).helloWorld),
          ],
        ),
      ),
    );
  }
}
