import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
    final _messaging = FirebaseMessaging.instance; 

    Future<void> init() async {
        await _messaging.requestPermission();

        FirebaseMessaging.onMessage.listen((message) {
            print("Message reçu : ${message.notification?.title}");
        }); 
    } 

    Notif? convertToNotif(RemoteMessage message) {
        return Notif(
            title: message.notification?.title ?? "",
            body: message.notification?.body ?? "",
        );
    }

}