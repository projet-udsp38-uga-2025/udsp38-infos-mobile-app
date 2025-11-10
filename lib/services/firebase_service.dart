import 'package:firebase_messaging/firebase_messaging.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import '../models/notif.dart';
=======
>>>>>>> 754a7dd (mise en place de larchi mvc)
=======
import '../models/notif.dart';
>>>>>>> 75cab82 (ajout des dependances)

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