// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static String get OPENAI_API_KEY => dotenv.env['OPENAI_API_KEY'] ?? '';
}
