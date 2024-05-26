

// import 'package:exam_tracker_mobile/screens/menu.dart';
// import 'package:exam_tracker_mobile/screens/trackerlist_form.dart';
// import 'package:flutter/material.dart';
//
// class LeftDrawer extends StatelessWidget {
//   const LeftDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.indigo,
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   'Exam Tracker',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.all(10)),
//                 Text(
//                   "All you exam notes all-in-one!",
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.home_outlined),
//             title: const Text('Home Page'),
//             // Bagian redirection ke MyHomePage
//             onTap: () {
//               Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomePage(),
//                   ));
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.add),
//             title: const Text('Add Exam'),
//             // Bagian redirection ke TrackerFormPage
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => TrackerFormPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

import '../screens/list_exam.dart';
import '../screens/login.dart';
import '../screens/trackerlist_form.dart';

class TrackerItem {
  final String name;
  final IconData icon;

  TrackerItem(this.name, this.icon);
}

class TrackerCard extends StatelessWidget {
  final TrackerItem item;

  const TrackerCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsif terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You've clicked ${item.name} button!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Add Exam") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrackerFormPage()));
          } else if (item.name == "Exams") {
            Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => const ExamPage()
              ),
            );
          } else if (item.name == "Logout") {
            final response = await request.logout(
                "http://localhost:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            }
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
