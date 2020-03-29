import 'package:vibrate/vibrate.dart';

export 'package:vibrate/vibrate.dart';

class Vibration {
// Check if the device can vibrate
  static Future<bool> canVibrate() {
    return Vibrate.canVibrate;
  }

  static vibrate() {
    Vibration.vibrate();
  }

  static vibrateWithPauses(List<Duration> list) {
    Vibrate.vibrateWithPauses(list);
  }

  static giveFeedBack(FeedbackType feedbackType) {
    Vibrate.feedback(feedbackType);
  }
}
