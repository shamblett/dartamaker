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
    }

    return ret;
  }

  /// Get a tag substitution for a supplied plugin
  String substitute(DartamakerTagNames tagName, Map<String, String> params) =>
      plugin(tagName, params).apply();
}
