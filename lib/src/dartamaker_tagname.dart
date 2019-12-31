/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;
// ignore_for_file: public_member_api_docs
// ignore_for_file: omit_local_variable_types
// ignore_for_file: unnecessary_final
// ignore_for_file: cascade_invocations
// ignore_for_file: avoid_print
// ignore_for_file: avoid_types_on_closure_parameters

/// Tag names
enum DartamakerTagNames {
  airport,
  autoinc,
  boolean,
  cat,
  city,
  company,
  country,
  county,
  creditcard,
  currency,
  date,
  dateiso,
  digits,
  dog,
  domainname,
  email,
  emojii,
  firstname,
  float,
  integer,
  last,
  latitude,
  letters,
  longitude,
  name,
  normal,
  oneof,
  postcode,
  price,
  state,
  statecode,
  street,
  surname,
  tel,
  time,
  timestamp,
  title,
  tld,
  town,
  url,
  uuid,
  website,
  word,
  words,
  zip
}

/// Tag name support
class DartamakerTagname {
  /// From string
  static DartamakerTagNames fromString(String tagName) {
    DartamakerTagNames ret;
    for (final DartamakerTagNames tag in DartamakerTagNames.values) {
      if (tagName == tag.toString().split('.')[1]) {
        ret = tag;
        break;
      }
    }
    return ret;
  }

  /// As string
  static String asString(DartamakerTagNames name) =>
      name.toString().split('.')[1];
}
