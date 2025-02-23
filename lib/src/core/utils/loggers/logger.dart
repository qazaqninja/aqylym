import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

Logger Log(Type type) => Logger(
      printer: CustomPrinter(type.toString()),
      level: Level.info,
    );

class CustomPrinter extends LogPrinter {
  final String className;

  CustomPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.defaultLevelColors[event.level];
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final time = DateTime.now();
    final formattedTime = DateFormat('HH:mm:ss').format(time);
    List<String> buffer = [];
    buffer.add(
      '$formattedTime: $emoji $className -> ${event.message}',
    );

    return buffer;
  }
}
