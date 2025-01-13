import 'dart:io';

Future<bool> isUserOnline() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } catch (e) {
    return false; // User is offline
  }
}
