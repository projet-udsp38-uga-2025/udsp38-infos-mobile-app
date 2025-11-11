import 'package:firebase_messaging/firebase_messaging.dart';
import '../models/notif.dart';

class FirebaseService {
    final _messaging = FirebaseMessaging.instance;

    Future<void> init() async {
        await _messaging.requestPermission();
    }

    Notif? convertToNotif(RemoteMessage message) {
        return Notif(
            title: message.notification?.title ?? "",
            body: message.notification?.body ?? "",
        );
    }

}