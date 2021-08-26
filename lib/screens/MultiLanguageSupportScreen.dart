import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

List languageCode = ["en", "hi"];
List countryCode = ["US", "IN"];

class MultiLanguageSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('hi', 'IN')
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      child: MultiLanguageSupport(),
    ));
  }
}

class MultiLanguageSupport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MultiLanguageSupportState();
  }
}

class _MultiLanguageSupportState extends State<MultiLanguageSupport> {
  //  late Locale _locale;
  //
  // void setLocale(Locale value) {
  //   setState(() {
  //     _locale = value;
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        // locale: _locale,
        color: Colors.white,
        home: Scaffold(
            appBar: AppBar(
                title: Text("Multi Language Support"),
                backgroundColor: Colors.purple),

            body: Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Text("${("title".tr().toString())}"   ,
                      style: TextStyle(fontSize: 25, color: Colors.green)),
                  Container(
                      margin: EdgeInsets.only(top: 35.0),
                      child: Row(children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: RaisedButton(
                            child: Text(
                              "English",
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              // setState(() {
                              //   EasyLocalization.of(context)!.locale = Locale(languageCode[0], countryCode[0]);
                              // });

                              // setLocale(Locale.fromSubtags(languageCode: 'hi'));





                            },
                            color: Colors.brown,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: RaisedButton(
                            child: Text(
                              "Hindi",
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              // setState(() {
                              //   EasyLocalization.of(context)!.locale = Locale(languageCode[1], countryCode[1]);
                              // });


                                // setLocale(Locale.fromSubtags(languageCode: 'hi'));



                            },
                            color: Colors.brown,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: RaisedButton(
                            child: Text(
                              "Korean",
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            color: Colors.brown,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
                        ),
                      ]))
                ],
              ),
            )));
  }
}
