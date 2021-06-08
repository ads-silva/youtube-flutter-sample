import 'package:flutter_dotenv/flutter_dotenv.dart';

Future startupConfig() async {
  await dotenv.load(fileName: ".env");
}