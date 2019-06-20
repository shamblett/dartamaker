/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The main dartamaker class
class Dartamaker {
  DartamakerPluginManager _pluginManager = DartamakerPluginManager();
  DartamakerFormatterManager _formatterManager = DartamakerFormatterManager();

  /// Get a plugin by tag name
  DartamakerPlugin plugin(
          DartamakerTagNames tagName, Map<String, String> params) =>
      _pluginManager.plugin(tagName, params);

  /// Get a formatter by type name
  DartamakerFormatter formatter(DartamakerFormatterTypes type) =>
      _formatterManager.formatter(type);

  /// Get a tag substitution for a tag
  String substitute(DartamakerTagNames tagName, Map<String, String> params) =>
      plugin(tagName, params).apply();

  /// Find tags, locate occurrences of things surrounded in double curly {{brackets}}
  List<Map<String, String>> findTags(String str) {
    final List<Map<String, String>> tags = List<Map<String, String>>();
    if (str == null) {
      return tags;
    }
    final RegExp exp = RegExp('({{[^{}]+}})');
    final Iterable<Match> matches = exp.allMatches(str);
    // Iterate through each one
    for (Match match in matches) {
      final String s = match.group(0);
      // remove leading {{
      // removing trailing }}
      // split into words
      // remove whitespace
      final List<String> t = s
          .replaceAll(RegExp('^{{'), '')
          .replaceAll(RegExp('}}\$'), '')
          .split(RegExp('(\\s+)'))
          .map((String e) => e.trim())
          .where((String e) => e.isNotEmpty)
          .toList();
      final String params = t.length == 2 ? t[1] : '';
      tags.add(<String, String>{
        DartamakerConstants.original: s,
        DartamakerConstants.tag: t[0],
        DartamakerConstants.params: params
      });
    }
    return tags;
  }

  /// Using the supplied template and list of tag objects found within it
  /// and a the supplied formatter object, make all the substitutions and
  /// return the new string.
  String swap(String template, List<Map<String, String>> tags,
      DartamakerFormatter formatter) {
    final String str = template;
    // Iterate through the tags
    for (Map<String, String> tag in tags) {
      DartamakerPlugin plugin = _pluginManager.byTagName(
          tag[DartamakerConstants.tag], tag[DartamakerConstants.params]);
    }
  }
}
