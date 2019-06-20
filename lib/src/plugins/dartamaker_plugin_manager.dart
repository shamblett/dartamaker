/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Plugin manager
class DartamakerPluginManager {
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
      case DartamakerTagNames.country:
        ret = DartamakerPluginCountry();
        break;
      case DartamakerTagNames.currency:
        ret = DartamakerPluginCurrency();
        break;
      case DartamakerTagNames.county:
        ret = DartamakerPluginCounty();
        break;
      case DartamakerTagNames.digits:
        ret = DartamakerPluginDigits(params[DartamakerConstants.numdigits]);
        break;
      case DartamakerTagNames.creditcard:
        ret = DartamakerPluginCreditcard();
        break;
      case DartamakerTagNames.dog:
        ret = DartamakerPluginDog();
        break;
      case DartamakerTagNames.tld:
        ret = DartamakerPluginTLD();
        break;
      case DartamakerTagNames.domainname:
        ret = DartamakerPluginDomainname();
        break;
      case DartamakerTagNames.firstname:
        ret = DartamakerPluginFirstname();
        break;
      case DartamakerTagNames.surname:
        ret = DartamakerPluginSurname();
        break;
      case DartamakerTagNames.email:
        ret = DartamakerPluginEmail();
        break;
      case DartamakerTagNames.emojii:
        ret = DartamakerPluginEmojii(params[DartamakerConstants.numchars]);
        break;
      case DartamakerTagNames.float:
        ret = DartamakerPluginFloat(
            params[DartamakerConstants.min],
            params[DartamakerConstants.max],
            params[DartamakerConstants.decimalplaces]);
        break;
      case DartamakerTagNames.integer:
        ret = DartamakerPluginInteger(
            params[DartamakerConstants.min], params[DartamakerConstants.max]);
        break;
      case DartamakerTagNames.dateiso:
        ret = DartamakerPluginDateiso(
            params[DartamakerConstants.min], params[DartamakerConstants.max]);
        break;
      case DartamakerTagNames.date:
        ret = DartamakerPluginDate(
            params[DartamakerConstants.min], params[DartamakerConstants.max]);
        break;
      case DartamakerTagNames.latitude:
        ret = DartamakerPluginLatitude();
        break;
      case DartamakerTagNames.longitude:
        ret = DartamakerPluginLongitude();
        break;
      case DartamakerTagNames.letters:
        ret = DartamakerPluginLetters(params[DartamakerConstants.numletters]);
        break;
      case DartamakerTagNames.name:
        ret = DartamakerPluginName();
        break;
      case DartamakerTagNames.normal:
        ret = DartamakerPluginNormal(
            params[DartamakerConstants.mean],
            params[DartamakerConstants.stddev],
            params[DartamakerConstants.decimalplaces]);
        break;
      case DartamakerTagNames.oneof:
        ret = DartamakerPluginOneof(params[DartamakerConstants.args]);
        break;
      case DartamakerTagNames.postcode:
        ret = DartamakerPluginPostcode();
        break;
      case DartamakerTagNames.price:
        ret = DartamakerPluginPrice(
            params[DartamakerConstants.min], params[DartamakerConstants.max]);
        break;
      case DartamakerTagNames.state:
        ret = DartamakerPluginState();
        break;
      case DartamakerTagNames.statecode:
        ret = DartamakerPluginStatecode();
        break;
      case DartamakerTagNames.street:
        ret = DartamakerPluginStreet();
        break;
      case DartamakerTagNames.tel:
        ret = DartamakerPluginTel();
        break;
      case DartamakerTagNames.time:
        ret = DartamakerPluginTime();
        break;
      case DartamakerTagNames.timestamp:
        ret = DartamakerPluginTimestamp();
        break;
      case DartamakerTagNames.title:
        ret = DartamakerPluginTitle();
        break;
      case DartamakerTagNames.town:
        ret = DartamakerPluginTown();
        break;
      case DartamakerTagNames.uuid:
        ret = DartamakerPluginUuid(params[DartamakerConstants.length]);
        break;
      case DartamakerTagNames.website:
        ret = DartamakerPluginWebsite();
        break;
      case DartamakerTagNames.url:
        ret = DartamakerPluginUrl();
        break;
      case DartamakerTagNames.words:
        ret = DartamakerPluginWords(params[DartamakerConstants.count]);
        break;
      case DartamakerTagNames.zip:
        ret = DartamakerPluginZip();
        break;
      case DartamakerTagNames.last: // Dummy plugin
        ret = DartamakerPluginDummy();
        break;
    }

    return ret;
  }

  /// Get a plugin by its string tag name
  DartamakerPlugin byTagName(String tagName, String params) {
    DartamakerPlugin plugin;
    for (DartamakerTagNames name in DartamakerTagNames.values) {
      if (tagName == name.toString()) {
        final Map<String, String> p = _getParamList(name, params);
        plugin = this.plugin(name, p);
      }
    }
    return plugin;
  }

  /// Get a parameter list for a tag from its string representation
  Map<String, String> _getParamList(DartamakerTagNames name, String params) {
    if (params.isEmpty) {
      return DartamakerConstants.pluginNullParam;
    }
    Map<String, String> ret;
    final List<String> paramArray = params.split(' ');
    switch (name) {
      case DartamakerTagNames.boolean:
        ret[DartamakerConstants.probability] = params[0];
        break;
      case DartamakerTagNames.digits:
        ret[DartamakerConstants.numdigits] = params[0];
        break;
      case DartamakerTagNames.emojii:
        ret[DartamakerConstants.numchars] = params[0];
        break;
      case DartamakerTagNames.float:
        ret[DartamakerConstants.min] = params[0];
        params.length >= 2
            ? ret[DartamakerConstants.max] = params[1]
            : ret[DartamakerConstants.max] = null;
        params.length == 3
            ? ret[DartamakerConstants.decimalplaces] = params[2]
            : ret[DartamakerConstants.decimalplaces] = null;
        break;
      case DartamakerTagNames.integer:
        ret[DartamakerConstants.min] = params[0];
        params.length == 2
            ? ret[DartamakerConstants.max] = params[1]
            : ret[DartamakerConstants.max] = null;
        break;
      case DartamakerTagNames.dateiso:
        ret[DartamakerConstants.min] = params[0];
        params.length == 2
            ? ret[DartamakerConstants.max] = params[1]
            : ret[DartamakerConstants.max] = null;
        break;
      case DartamakerTagNames.date:
        ret[DartamakerConstants.min] = params[0];
        params.length == 2
            ? ret[DartamakerConstants.max] = params[1]
            : ret[DartamakerConstants.max] = null;
        break;
      case DartamakerTagNames.letters:
        ret[DartamakerConstants.numletters] = params[0];
        break;
      case DartamakerTagNames.normal:
        ret[DartamakerConstants.min] = params[0];
        params.length >= 2
            ? ret[DartamakerConstants.stddev] = params[1]
            : ret[DartamakerConstants.stddev] = null;
        params.length == 3
            ? ret[DartamakerConstants.decimalplaces] = params[2]
            : ret[DartamakerConstants.decimalplaces] = null;
        break;
      case DartamakerTagNames.oneof:
        ret[DartamakerConstants.args] = params[0];
        break;
      case DartamakerTagNames.price:
        ret[DartamakerConstants.min] = params[0];
        params.length == 2
            ? ret[DartamakerConstants.max] = params[1]
            : ret[DartamakerConstants.max] = null;
        break;
      case DartamakerTagNames.uuid:
        ret[DartamakerConstants.length] = params[0];
        break;
      case DartamakerTagNames.words:
        ret[DartamakerConstants.count] = params[0];
        break;
      default:
        break;
    }
    return ret;
  }
}
