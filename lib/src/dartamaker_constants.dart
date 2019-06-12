/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;
// ignore_for_file: public_member_api_docs

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
  kuuid,
  kuuidr,
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

/// Package wide constants
class DartamakerConstants {
  /// Plugin parameters

  /// Boolean
  static const String probability = 'probability';

  /// Plugin null parameter
  static Map<String, String> pluginNullParam = Map<String, String>();
}