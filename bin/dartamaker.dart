/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

import 'dart:io';
import 'package:dartamaker/dartamaker.dart';
import 'package:args/args.dart';

int main(List<String> args) {
  final Dartamaker datagen = Dartamaker();

  int iterations = 1;
  DartamakerFormatter formatter = DartamakerFormatterNone();
  String templatePath;
  ArgResults results;
  String input;

  // Initialize the argument parser
  final ArgParser parser = ArgParser();
  final List<String> formatOptions = <String>['json', 'csv', 'xml', 'none'];
  parser.addOption('format',
      abbr: 'f',
      defaultsTo: 'none',
      help: 'Format of the output data',
      allowed: formatOptions, callback: (String param) {
    formatter = datagen.formatter(DartamakerFormattertype.fromString(param));
  });
  parser.addOption('iterations',
      abbr: 'i',
      defaultsTo: '1',
      help: 'Number of records to generate, must be greater than 0',
      callback: (String param) {
    final int tmp = int.tryParse(param);
    if (tmp != null && tmp >= 1) {
      iterations = tmp;
    } else {
      print('Invalid iteration value entered, defaulting');
    }
  });
  parser.addOption(
    'template',
    abbr: 't',
    help: 'The path of the template file',
    callback: (String param) => templatePath = param,
  );
  parser.addFlag('list',
      abbr: 'l', help: 'List available tags', negatable: false);
  parser.addFlag('help', abbr: 'h', negatable: false);

  try {
    results = parser.parse(args);
  } on FormatException catch (e) {
    print('${e.message}');
    return -1;
  }

  // Help
  if (results['help']) {
    print(parser.usage);
    return 0;
  }

  // Tag list
  if (results['list']) {
    print(datagen.allTagNames());
    return 0;
  }

  // Get the template as a string if we have one
  if (templatePath != null) {
    final File tmp = File(templatePath);
    try {
      input = tmp.readAsStringSync().trim();
    } on Exception catch (e) {
      print('Unable to read template file, $e.message');
      return -1;
    }
  }

  // Generate the data and output to stdout
  final List<String> output = datagen.generate(input, formatter, iterations);
  print(output);

  return 0;
}
