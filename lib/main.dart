// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart'; // Ensure this import is not commented out

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('WhatsApp Launcher'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               launchWhatsApp();
//             },
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Changed to green for WhatsApp
//             ),
//             child: Text('Contact Us on WhatsApp'),
//           ),
//         ),
//       ),
//     );
//   }

//   void launchWhatsApp() async {
//     String phoneNumber = "0742782395";
//     String message = "Hello and Welcome to Zendawa.\nWe tailor our services to meet your needs zendawa.africa.\nHow can we assist you today?";
//     String url = "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}";
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import the font_awesome_flutter package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp Launcher'),
        ),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              launchWhatsApp();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // WhatsApp green color
            ),
            icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white), // WhatsApp icon
            label: Text('Contact Us on WhatsApp', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  void launchWhatsApp() async {
    String phoneNumber = "0742782395";
    String message = "Hello and Welcome to Zendawa.\nWe tailor our services to meet your needs (zendawa.africa).\nHow can we assist you today?";
    String url = "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
