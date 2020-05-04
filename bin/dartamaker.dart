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
  final datagen = Dartamaker();

  var iterations = 1;
  DartamakerFormatter formatter = DartamakerFormatterNone();
  String templatePath;
  ArgResults results;
  String input;

  // Initialize the argument parser
  final parser = ArgParser();
  final formatOptions = DartamakerFormattertype.asStringList();
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
    final tmp = int.tryParse(param);
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

  // Get the template as a string or use the arguments
  if (templatePath != null) {
    final tmp = File(templatePath);
    try {
      input = tmp.readAsStringSync().trim();
    } on Exception catch (e) {
      print('Unable to read template file, $e.message');
      return -1;
    }
  } else {
    if (results.rest.isNotEmpty) {
      input = results.rest.join(' ');
    } else {
      print('No input - exiting');
      return 0;
    }
  }

  // Generate the data and output to stdout
  final output = datagen.generate(input, formatter, iterations);
  print(output.join('\n'));

  return 0;
}
