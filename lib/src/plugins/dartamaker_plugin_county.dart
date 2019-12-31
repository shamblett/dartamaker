/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// County names
class DartamakerPluginCounty implements DartamakerPlugin {
  final List<String> _counties = <String>[
    'Buckinghamshire',
    'Cambridgeshire',
    'Cheshire',
    'Cleveland',
    'Cornwall',
    'Cumbria',
    'Derbyshire',
    'Devon',
    'Dorset',
    'Durham',
    'East Sussex',
    'Essex',
    'Gloucestershire',
    'Greater London',
    'Greater Manchester',
    'Hampshire',
    'Hertfordshire',
    'Kent',
    'Lancashire',
    'Leicestershire',
    'Lincolnshire',
    'Merseyside',
    'Norfolk',
    'North Yorkshire',
    'Northamptonshire',
    'Northumberland',
    'Nottinghamshire',
    'Oxfordshire',
    'Shropshire',
    'Somerset',
    'South Yorkshire',
    'Staffordshire',
    'Suffolk',
    'Surrey',
    'Tyne and Wear',
    'Warwickshire',
    'West Berkshire',
    'West Midlands',
    'West Sussex',
    'West Yorkshire',
    'Wiltshire',
    'Worcestershire',
    'Flintshire',
    'Glamorgan',
    'Merionethshire',
    'Monmouthshire',
    'Montgomeryshire',
    'Pembrokeshire',
    'Radnorshire',
    'Anglesey',
    'Breconshire',
    'Caernarvonshire',
    'Cardiganshire',
    'Carmarthenshire',
    'Denbighshire',
    'Aberdeen City',
    'Aberdeenshire',
    'Angus',
    'Argyll and Bute',
    'City of Edinburgh',
    'Clackmannanshire',
    'Dumfries and Galloway',
    'Dundee City',
    'East Ayrshire',
    'East Dunbartonshire',
    'East Lothian',
    'East Renfrewshire',
    'Eilean Siar',
    'Falkirk',
    'Fife',
    'Glasgow City',
    'Highland',
    'Inverclyde',
    'Midlothian',
    'Moray',
    'North Ayrshire',
    'North Lanarkshire',
    'Orkney Islands',
    'Perth and Kinross',
    'Renfrewshire',
    'Scottish Borders',
    'Shetland Islands',
    'South Ayrshire',
    'South Lanarkshire',
    'Stirling',
    'West Dunbartonshire',
    'West Lothian',
    'Antrim',
    'Armagh',
    'Down',
    'Fermanagh',
    'Derry and Londonderry',
    'Tyrone'
  ];

  /// Counties list
  List<String> get counties => _counties;

  @override
  String apply() => _counties[Random().nextInt(_counties.length - 1)];
}
