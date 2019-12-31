/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Postcodes
class DartamakerPluginPostcode implements DartamakerPlugin {
  final List<String> _postcodes = <String>[
    'AB',
    'AL',
    'B',
    'BA',
    'BB',
    'BD',
    'BH',
    'BL',
    'BN',
    'BR',
    'BS',
    'BT',
    'CA',
    'CB',
    'CF',
    'CH',
    'CM',
    'CO',
    'CR',
    'CT',
    'CV',
    'CW',
    'DA',
    'DD',
    'DE',
    'DG',
    'DH',
    'DL',
    'DN',
    'DT',
    'DY',
    'E',
    'EC',
    'EH',
    'EN',
    'EX',
    'FK',
    'FY',
    'G',
    'GL',
    'GU',
    'HA',
    'HD',
    'HG',
    'HP',
    'HR',
    'HS',
    'HU',
    'HX',
    'IG',
    'IP',
    'IV',
    'KA',
    'KT',
    'KW',
    'KY',
    'L',
    'LA',
    'LD',
    'LE',
    'LL',
    'LN',
    'LS',
    'LU',
    'M',
    'ME',
    'MK',
    'ML',
    'N',
    'NE',
    'NG',
    'NN',
    'NP',
    'NR',
    'NW',
    'OL',
    'OX',
    'PA',
    'PE',
    'PH',
    'PL',
    'PO',
    'PR',
    'RG',
    'RH',
    'RM',
    'S',
    'SA',
    'SE',
    'SG',
    'SK',
    'SL',
    'SM',
    'SN',
    'SO',
    'SP',
    'SR',
    'SS',
    'ST',
    'SW',
    'SY',
    'TA',
    'TD',
    'TF',
    'TN',
    'TQ',
    'TR',
    'TS',
    'TW',
    'UB',
    'W',
    'WA',
    'WC',
    'WD',
    'WF',
    'WN',
    'WR',
    'WS',
    'WV',
    'YO',
    'ZE'
  ];

  /// Postcode list
  List<String> get postcodes => _postcodes;

  @override
  String apply() {
    final int numDigits = Random().nextDouble() > 0.5 ? 1 : 2;
    return '${_postcodes[Random().nextInt(_postcodes.length - 1)]}'
        '${DartamakerPluginDigits(numDigits.toString()).apply()} '
        '${DartamakerPluginDigits('1').apply()}'
        '${DartamakerPluginLetters('2').apply()}';
  }
}
