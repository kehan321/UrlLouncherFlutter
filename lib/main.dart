// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3E1F92),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Get in touch',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                const Text(
                    "We'd love to hear from you. Our friendly team is always here to chat.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      
                        color: Color(0xFFA895D1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal)),
                const SizedBox(height: 30.0),
                TextButton(
                  onPressed: () {
                      //FOR PHONE NUMBER:
            final Uri _phoneLaunchUri =
                Uri(scheme: 'tel', path: "03350216725");
            _makeSocialMediaRequest(_phoneLaunchUri.toString());
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.phone, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('+923350216725',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.sms, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('+03350216725',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                                        //FOR EMAIL
            final Uri _emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'skyrrah999@gmail.com',
                queryParameters: {'subject': 'Pratik Butani'});
            _makeSocialMediaRequest(_emailLaunchUri.toString());
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.mail, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('skyrrah999@gmail.com',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
  onPressed: () {
    //logic goes here
  },
  style: TextButton.styleFrom(
    padding: const EdgeInsets.all(15),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.location_pin, color: Color(0xFFED92A2)),
      SizedBox(width: 20.0),
      Expanded(
        child: Text(
          '87 Summer St., Boston, MA 02110',
          style: TextStyle(
            color: Color(0xFFA294C2),
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  ),
),

                
                TextButton(
                  onPressed: () {
                    
                      //FOR ANY URL.. YOU CAN PASS DIRECT URL..
                    _makeSocialMediaRequest("https://www.youtube.com/");
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.language, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('youtube.com',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Future<void> _makeSocialMediaRequest(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



// launchURL() async {
//   static const String homeLat = "37.3230";
//   static const String homeLng = "-122.0312";
//   static final String googleMapslocationUrl = "https://www.google.com/maps/search/?api=1&query=${TextStrings.homeLat},${TextStrings.homeLng}";
// final String encodedURl = Uri.encodeFull(googleMapslocationUrl);
//     if (await canLaunch(encodedURl)) {
//       await launch(encodedURl);
//     } else {
//       print('Could not launch $encodedURl');
//       throw 'Could not launch $encodedURl';
//     }
//   }
 