import 'dart:async';

import 'package:droidkaigi2018/i18n/messages_all.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Strings {
  static Future<Strings> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((Null _) {
      Intl.defaultLocale = localeName;
      return new Strings();
    });
  }

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static final Strings instance = new Strings();

  String get appName => Intl.message("DroidKaigi 2018", name: "appName");
  String get allSessions => Intl.message("All Sessions", name: "allSessions");
  String get mySchedule => Intl.message("My Schedule", name: "mySchedule");
  String map() => Intl.message("Map", name: "map");
  String settings() => Intl.message("Settings", name: "settings");
  String sponsors() => Intl.message("Sponsors", name: "sponsors");
  String questionnaire() => Intl.message("Quesionnaire", name: "questionnaire");
  String about() => Intl.message("About", name: "about");
  String day(int day) => Intl.message("DAY$day", name: "day", args: [day]);
}
