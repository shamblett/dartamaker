/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Airport names
class DartamakerPluginAirport implements DartamakerPluginBase {
  final List<String> _airports = <String>[
    'VIX',
    'SGW',
    'HRD',
    'MQL',
    'SZQ',
    'COX',
    'BFI',
    'GWA',
    'TMD',
    'RYN',
    'KRO',
    'REB',
    'PSM',
    'JCD',
    'CPB',
    'IQM',
    'GVT',
    'XZC',
    'MXR',
    'KAO',
    'LNK',
    'LKZ',
    'FLB',
    'ATT',
    'BLC',
    'OMN',
    'MDN',
    'GLB',
    'YTG',
    'OMO',
    'CBF',
    'WQM',
    'RAU',
    'DZN',
    'HTF',
    'RTY',
    'CMQ',
    'NEV',
    'TUF',
    'ESM',
    'NND',
    'GBC',
    'ELC',
    'VVI',
    'XAU',
    'FXE',
    'HMV',
    'DLO',
    'KWA',
    'FOO',
    'MSP',
    'POS',
    'LXR',
    'IFJ',
    'RNN',
    'JDB',
    'VCA',
    'YLG',
    'QFQ',
    'SPY',
    'SPP',
    'ELL',
    'HCW',
    'IBE',
    'DSC',
    'REP',
    'FHZ',
    'TSB',
    'ESA',
    'CNR',
    'KPV',
    'TSO',
    'ASG',
    'ZTM',
    'IWD',
    'WAF',
    'CXH',
    'FKJ',
    'CYL',
    'YBX',
    'BOZ',
    'BGK',
    'RYO',
    'AKX',
    'YQK',
    'PWD',
    'WQX',
    'BJA',
    'BDE',
    'RPR',
    'YXQ',
    'RDE',
    'XOX',
    'YKU',
    'ATW',
    'YCJ',
    'KBF',
    'YFH',
    'LQN',
    'BEP',
    'XWB',
    'KZF',
    'VII',
    'DIB',
    'BDF',
    'EEK',
    'XWM',
    'BQT',
    'TLD',
    'KTG',
    'SDG',
    'TUR',
    'KYD',
    'TED',
    'KEM',
    'MPS',
    'MJT',
    'OMH',
    'YMX',
    'COI',
    'WTP',
    'CSN',
    'PBO',
    'MZA',
    'TID',
    'JCH',
    'BYK',
    'TUJ',
    'DGC',
    'KZI',
    'NGR',
    'CSU',
    'OAL',
    'AIO',
    'CHZ',
    'IXU',
    'ZUE',
    'CXJ',
    'TWB',
    'KUS',
    'MYC',
    'NIG',
    'SMW',
    'MIT',
    'DDP',
    'MMQ',
    'KOT',
    'HBA',
    'UAH',
    'VWW',
    'GSB',
    'KMJ',
    'ILG',
    'MML',
    'JIK',
    'GAH',
    'YTZ',
    'JAM',
    'PKP',
    'PPI',
    'CRQ',
    'GAO',
    'GRY',
    'SCD',
    'ISG',
    'KND',
    'DLB',
    'YAO',
    'HCC',
    'YST',
    'LIM',
    'SGU',
    'PBA',
    'FRL',
    'PPL',
    'SOQ',
    'DNO',
    'ULG',
    'KAK',
    'LHS',
    'MZY',
    'SDV',
    'IXG',
    'PRL',
    'KUD',
    'KQL',
    'TTL',
    'RTE',
    'BVI',
    'DLA',
    'CSG',
    'ARS',
    'MSE',
    'BGY',
    'UAQ',
    'YKG',
    'IKT',
    'PAI',
    'PDB',
    'YCM',
    'NGX',
    'ALI',
    'ALK',
    'CWR',
    'KHO',
    'GRD',
    'BRA',
    'AXX',
    'DKI',
    'CDB',
    'SEK',
    'PNP',
    'ILY',
    'PRE',
    'EIE',
    'IAS',
    'NKT',
    'KRN',
    'TMR',
    'WUD',
    'BOD',
    'WOW',
    'YIO',
    'PMB',
    'BRU',
    'LBN',
    'VWP',
    'QQB',
    'ROX',
    'GGL',
    'RBM',
    'MAU',
    'LNC',
    'WIT',
    'TRM',
    'CPV',
    'GAM',
    'HUK',
    'KUC',
    'VDC',
    'SGJ',
    'CZW',
    'UND',
    'VEL',
    'CDK',
    'YUF',
    'SVN',
    'JGO',
    'PHS',
    'GMS',
    'MYH',
    'XIA',
    'FBD',
    'EUN',
    'YZU',
    'BII',
    'CID',
    'SWH',
    'LAB',
    'BES',
    'LLI',
    'MVV',
    'VSO',
    'YSE',
    'CNX',
    'ICL',
    'KSO',
    'VIE',
    'VCT',
    'VIL',
    'THS',
    'SDL',
    'MVC',
    'HER',
    'KIH',
    'DDN',
    'SKX',
    'ATQ',
    'OBY',
    'PQM',
    'MGQ',
    'BQL',
    'RPA',
    'DGA',
    'BRL',
    'HYN',
    'RBV',
    'HVK',
    'VTB',
    'SWN',
    'ZXZ',
    'BHZ',
    'GFE',
    'BWA',
    'ULU',
    'OSA',
    'GIR',
    'KSM',
    'KKI',
    'RID',
    'RCK',
    'VAF',
    'KKT',
    'PCH',
    'PLL',
    'TEL',
    'FNI',
    'CEL',
    'NUK',
    'LCO',
    'LAS',
    'OCC',
    'BLP',
    'HHQ',
    'XXQ',
    'WSX',
    'ELQ',
    'BMK',
    'BSM',
    'TYE',
    'YGS',
    'ICK',
    'BGW',
    'ZZC',
    'VVO',
    'MOO',
    'MVS',
    'BPD',
    'GWY',
    'BOS',
    'ZPA',
    'NGB',
    'GEO',
    'CRD',
    'FOR',
    'NRT',
    'YPC',
    'WHL',
    'LPD',
    'CCV',
    'EJA',
    'JOM',
    'KLW',
    'DUE',
    'DRS',
    'TIX',
    'EQS',
    'CRO',
    'NAH',
    'GBZ',
    'EFW',
    'JKT',
    'KGZ',
    'ABU',
    'GYR',
    'CAL',
    'RQE',
    'RAZ',
    'RAB',
    'YHN',
    'NZW',
    'YBB',
    'JHG',
    'LNX',
    'AQY',
    'MSB',
    'LGN',
    'DNK',
    'GTK',
    'ITH',
    'TNB',
    'KWJ',
    'BRV',
    'JHE',
    'OGZ',
    'SYU',
    'ELM',
    'KSI',
    'SEH',
    'PMU',
    'SYI',
    'DOG',
    'RAX',
    'DJO',
    'TUO',
    'KEA',
    'OOR',
    'MRX',
    'ZXW',
    'STN',
    'XHM',
    'WKA',
    'INK',
    'ESL',
    'LZA',
    'SXA',
    'PSP',
    'FAK',
    'GAX',
    'CMR',
    'WMO',
    'MXE',
    'SUZ',
    'OKU',
    'TCW',
    'UVA',
    'LJN',
    'CZN',
    'VTL',
    'PJM',
    'XNU',
    'BKH',
    'BKA',
    'XGK',
    'WBU',
    'SRE',
    'BIL',
    'NUG',
    'WNC',
    'RRT',
    'CDQ',
    'AZG',
    'QQK',
    'XLZ',
    'YIV',
    'KFF',
    'WEB',
    'TVL',
    'MNH',
    'TAA',
    'KCN',
    'MHY',
    'VZQ',
    'FLG',
    'ANL',
    'NTU',
    'YSR',
    'CPS',
    'NTI',
    'YPY',
    'PRB',
    'HGL',
    'TUC',
    'XYE',
    'SNV',
    'KGJ',
    'JFR',
    'AVU',
    'HBT',
    'PSO',
    'SUC',
    'IKI',
    'GYM',
    'RDZ',
    'JSA',
    'SVD',
    'LUJ',
    'ZQS',
    'ZXL',
    'AGJ',
    'TOQ',
    'HAT',
    'BUG',
    'PUO',
    'XFQ',
    'KAF',
    'BZI',
    'SXS',
    'JRO',
    'LGU',
    'AMX',
    'DEL',
    'KYS',
    'SQQ',
    'YZP',
    'UPC',
    'NLG',
    'DJJ',
    'JGX',
    'CCI',
    'CSK',
    'TEZ',
    'SDJ',
    'PXA',
    'GOU',
    'RSP',
    'GGC',
    'NKV',
    'GFN',
    'MVM',
    'SBI',
    'PDL',
    'GLT',
    'VAL',
    'IXV',
    'RJI',
    'RIK',
    'KMI',
    'PLW',
    'KBH',
    'AMV',
    'WLO',
    'YDT',
    'CHD',
    'STP',
    'XIO',
    'JCE',
    'GSI',
    'MBI',
    'KIK',
    'PIU',
    'KSZ',
    'LOS',
    'OHP',
    'HNC',
    'SQH',
    'DMR',
    'BNG',
    'CFT',
    'PKU',
    'API',
    'JGN',
    'NNK',
    'DBA',
    'YML',
    'BZZ',
    'FLC',
    'YIN',
    'KWY',
    'HET',
    'WDB',
    'SPR',
    'GOY',
    'WOK',
    'QJD',
    'YDJ',
    'CML',
    'XZL',
    'SIH',
    'ATN',
    'RBF',
    'BRS',
    'HAD',
    'GEX',
    'RKP',
    'JWL',
    'PHX',
    'OOA',
    'WOG',
    'YYD',
    'BFX',
    'CZK',
    'YKY',
    'SPV',
    'CMN',
    'IRJ',
    'JSK',
    'OOK',
    'OLQ',
    'BHK',
    'KDJ',
    'TYL',
    'BCI',
    'BUO',
    'WGE',
    'DHI',
    'MMK',
    'POC',
    'UNI',
    'MAV',
    'MLO',
    'FVE',
    'VZY',
    'LMT',
    'QRA',
    'PPS',
    'PKC',
    'XXS',
    'ZMU',
    'PGP',
    'ZAH',
    'OPS',
    'DHL',
    'DNL',
    'AZB',
    'JOC',
    'EVW',
    'OKO',
    'PKV',
    'EGE',
    'HND',
    'OGL',
    'VKW',
    'SHD',
    'ELN',
    'VND',
    'LTN',
    'ZXP',
    'SEA',
    'EWB',
    'OTH',
    'HWI',
    'HCM',
    'SBR',
    'APQ',
    'ABW',
    'CGP',
    'GRL',
    'SRL',
    'TKQ',
    'GBM',
    'PST',
    'JMC',
    'IBO',
    'YNC',
    'CGV',
    'PHD',
    'MFT',
    'PYX',
    'WJA',
    'YSB',
    'AEK',
    'KWO',
    'RSE',
    'MVL',
    'OXC',
    'KNO',
    'GSN',
    'BBQ',
    'BBP',
    'QQP',
    'MTV',
    'WSR',
    'NOA',
    'HIB',
    'TYT',
    'YPX',
    'MDT',
    'CMK',
    'GTG',
    'BLW',
    'YNS',
    'WNA',
    'BAU',
    'FWM',
    'SNQ',
    'TCU',
    'GIL',
    'JDN',
    'OUR',
    'FMO',
    'CMC',
    'GDN',
    'YRF',
    'JAC',
    'SDR',
    'IFA',
    'LFR',
    'UPR',
    'LHG',
    'AUL',
    'ITA',
    'BZP',
    'LAU',
    'TIO',
    'YQM',
    'RNP',
    'TDV',
    'ERZ',
    'MXO',
    'OBK',
    'LWN',
    'DLY',
    'PCB',
    'APU',
    'MKI',
    'TGS',
    'IOU',
    'KSV',
    'PBU',
    'HGH',
    'AHF',
    'SJT',
    'YRM',
    'YZH',
    'YBI',
    'PAN',
    'SRZ',
    'EDR',
    'SVU',
    'YZX',
    'INV',
    'MFY',
    'YEP',
    'ZUN',
    'KMC',
    'YYR',
    'BRC',
    'LAZ',
    'XNS',
    'CWS',
    'ISB',
    'OBA',
    'POA',
    'REX',
    'TRH',
    'PUY',
    'EGX',
    'CNA',
    'SIQ',
    'OSG',
    'ZAW',
    'BNZ',
    'KML',
    'XMN',
    'YDQ',
    'MEX',
    'XTR',
    'FVD',
    'BMU',
    'JNX',
    'BET',
    'GNG',
    'LVP',
    'HAC',
    'CSB',
    'URD',
    'JDY',
    'NPH',
    'PBR',
    'BQU',
    'PWI',
    'JRS',
    'IMA',
    'SIN',
    'GUE',
    'YND',
    'MUE',
    'PEA',
    'TSA',
    'OLO',
    'ILU',
    'LKA',
    'SMM',
    'BNC',
    'GXH',
    'CPR',
    'LTT',
    'LGB',
    'YSY',
    'WWD',
    'MSA',
    'XFL',
    'AQG',
    'SBS',
    'CNZ',
    'JZZ',
    'LJG',
    'JBT',
    'CEZ',
    'ONI',
    'PUG',
    'FNA',
    'PWQ',
    'EKB',
    'LAD',
    'CUG',
    'ZZL',
    'VLE',
    'GEB',
    'PRR',
    'KRV',
    'HIP',
    'HTW',
    'SGI',
    'LSE',
    'WQN',
    'TCM',
    'IXR',
    'LKO',
    'KSC',
    'ZBU',
    'HRA',
    'ADD',
    'YYY',
    'QQV',
    'PLB',
    'WHS',
    'UAI',
    'ALL',
    'GFF',
    'MHR',
    'TBI',
    'TNL',
    'XZA',
    'TTN',
    'GOT',
    'BUT',
    'SYX',
    'WQI',
    'PLJ',
    'COL',
    'MTC',
    'IEV',
    'ZTH',
    'PYC',
    'CHT',
    'SNW',
    'KGS',
    'STG',
    'MDG',
    'NRE',
    'ENH',
    'AKJ',
    'VZE',
    'KSF',
    'MSM',
    'GHL',
    'KIA',
    'RQM',
    'HPN',
    'AKG',
    'MKQ',
    'XIN',
    'AVN',
    'MZO',
    'BVY',
    'GAW',
    'ACK',
    'BIO',
    'PIM',
    'XGW',
    'VNY',
    'GTT',
    'LUU',
    'MTK',
    'TAE',
    'PXX',
    'GTC',
    'CBS',
    'TJM',
    'GAD',
    'NRD',
    'HOE',
    'MHV',
    'TBA',
    'KNG',
    'LQK',
    'MGD',
    'EFK',
    'STB',
    'REI',
    'URY',
    'NDA',
    'ANY',
    'RJA',
    'ISP',
    'JZU',
    'GAJ',
    'VCR',
    'YTX',
    'PZK',
    'ZNG',
    'MHH',
    'CPN',
    'YWM',
    'MTW',
    'NFO',
    'ZEL',
    'ZRA',
    'HOU',
    'FLX',
    'PLE',
    'ROD',
    'JSZ',
    'AUF',
    'ZSE',
    'MCV',
    'HOA',
    'NUQ',
    'YDP',
    'FEL',
    'WTA',
    'CVE',
    'GTB',
    'DRU',
    'FIH',
    'DRN',
    'CTC',
    'AVC',
    'PJC',
    'MDU',
    'HED',
    'KKE',
    'BCE',
    'JCA',
    'SHQ',
    'MZH',
    'AZD',
    'KAL',
    'GZO',
    'SLA',
    'CRL',
    'EYP',
    'CFF',
    'XLP',
    'KWK',
    'AYA',
    'HXX',
    'BYQ',
    'LIW',
    'UAK',
    'DZA',
    'YAL',
    'JSM',
    'SGV',
    'GHN',
    'WWT',
    'CQF',
    'ZRF',
    'JTI',
    'SKW',
    'BDA',
    'YZW',
    'ZMR',
    'GDP',
    'GTY',
    'NLK',
    'UMC',
    'WGT',
    'QMY',
    'PMP',
    'GNS',
    'DOA',
    'SSE',
    'HAM',
    'HTB',
    'NOQ',
    'SIB',
    'MUJ',
    'UBA',
    'SZC',
    'JNP',
    'VZT',
    'HYR',
    'WTT',
    'BVH',
    'ILP',
    'NKC',
    'RIC',
    'YUA',
    'RQT',
    'FNE',
    'THI',
    'COJ',
    'PAK',
    'YPL',
    'KIT',
    'QPW',
    'QQM',
    'RUV',
    'GUD',
    'DYW',
    'YWA',
    'ONR',
    'KBV',
    'MPU',
    'KCS',
    'KVA',
    'DIM',
    'EMT',
    'PVI',
    'XXP',
    'KEG',
    'LAY',
    'SWP',
    'GDE',
    'MRV',
    'ROO',
    'NGW',
    'HJT',
    'MNG',
    'PDA',
    'CMU',
    'SEO',
    'MFM',
    'DMT',
    'FID',
    'PCP',
    'MDE',
    'BRM',
    'MUU',
    'SKD',
    'MLX',
    'POH',
    'SKA',
    'OUK',
    'MDO',
    'UXT',
    'PWR'
  ];

  /// Airports list
  List<String> get airports => _airports;

  @override
  String apply() => _airports[Random().nextInt(_airports.length - 1)];
}
