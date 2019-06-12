/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The main dartamaker class
class Dartamaker {
  DartamakerPluginAutoinc _autoinc = DartamakerPluginAutoinc();

  /// Get a plugin by tag name
  DartamakerPlugin plugin(
      DartamakerTagNames tagName, Map<String, String> params) {
    DartamakerPlugin ret;
    switch (tagName) {
      case DartamakerTagNames.airport:
        ret = DartamakerPluginAirport();
        break;
      case DartamakerTagNames.autoinc:
        ret = _autoinc;
        break;
      case DartamakerTagNames.boolean:
        ret = DartamakerPluginBoolean(params[DartamakerConstants.probability]);
        break;
      case DartamakerTagNames.cat:
        ret = DartamakerPluginCat();
        break;
      case DartamakerTagNames.city:
        ret = DartamakerPluginCity();
        break;
      case DartamakerTagNames.word:
        ret = DartamakerPluginWord();
        break;
      case DartamakerTagNames.company:
        ret = DartamakerPluginCompany();
        break;
    }

    return ret;
  }

  /// Get a tag substitution for a supplied plugin
  String substitute(DartamakerTagNames tagName, Map<String, String> params) =>
      plugin(tagName, params).apply();
}
