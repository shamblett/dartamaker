/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: omit_local_variable_types
// ignore_for_file: unnecessary_final
// ignore_for_file: cascade_invocations
// ignore_for_file: avoid_print
// ignore_for_file: avoid_types_on_closure_parameters

/// The main dartamaker class
class Dartamaker {
  final DartamakerPluginManager _pluginManager = DartamakerPluginManager();
  final DartamakerFormatterManager _formatterManager =
      DartamakerFormatterManager();
  final DartamakerCache _cache = DartamakerCache();

  /// Get a plugin by tag name and supplied mapped parameters
  DartamakerPlugin plugin(
          DartamakerTagNames tagName, Map<String, String> params) =>
      _pluginManager.plugin(tagName, params, _cache);

  /// Get a plugin by its string tag name and string parameters
  DartamakerPlugin byTagName(String tagName, String params) =>
      _pluginManager.byStringTagName(tagName, params, _cache);

  /// Get a formatter by type name
  DartamakerFormatter formatter(DartamakerFormatterTypes type) =>
      _formatterManager.formatter(type);

  /// Get a tag substitution for a tag
  String substitute(DartamakerTagNames tagName, Map<String, String> params) =>
      plugin(tagName, params).apply();

  /// Find tags, locate occurrences of things surrounded in
  /// double curly {{brackets}}
  List<Map<String, String>> findTags(String str) {
    final List<Map<String, String>> tags = <Map<String, String>>[];
    if (str == null) {
      return tags;
    }
    final RegExp exp = RegExp('({{[^{}]+}})');
    final Iterable<Match> matches = exp.allMatches(str);
    // Iterate through each one
    for (final Match match in matches) {
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
    String str = template;
    // Iterate through the tags
    for (final Map<String, String> tag in tags) {
      final DartamakerPlugin plugin = _pluginManager.byStringTagName(
          tag[DartamakerConstants.tag],
          tag[DartamakerConstants.params],
          _cache);

      // Calculate the replacement
      final String replacement = formatter.filter(plugin.apply());

      if (replacement != null) {
        // Cache the last-generated value for each tag
        _cache.updateByStringTagName(tag[DartamakerConstants.tag], replacement);

        // Switch the tag in the template for the replacement
        str = str.replaceAll(tag[DartamakerConstants.original], replacement);
      }
    }

    // Apply any post formatting specified by the formatter
    return formatter.postCommit(str);
  }

  /// Generate some data based on the template, the format and the
  /// number of iterations
  List<String> generate(
      String str, DartamakerFormatter formatter, int iterations) {
    if (iterations <= 0) {
      return <String>[str];
    }

    final List<String> res = <String>[];

    /// Locate tags in the template
    final List<Map<String, String>> tags = findTags(str);

    /// Iterate
    int count = 1;
    do {
      _cache.clear();
      final String tmp = swap(str, tags, formatter);
      res.add(tmp);
      count++;
    } while (count <= iterations);

    return res;
  }

  /// List all the tag names
  String allTagNames() {
    final List<String> ret = <String>[];
    for (final DartamakerTagNames tagName in DartamakerTagNames.values) {
      ret.add('${DartamakerTagname.asString(tagName)}\n');
    }
    return ret.join('');
  }
}
