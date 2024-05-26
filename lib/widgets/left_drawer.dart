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

import 'package:flutter/material.dart';
import 'package:exam_tracker_mobile/screens/menu.dart';

import 'package:exam_tracker_mobile/screens/list_exam.dart';
import 'package:exam_tracker_mobile/screens/trackerlist_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Exam Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Track your exam grades here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Main Page'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_add_rounded),
            title: const Text('Add Exam'),
            // Bagian redirection ke TrackerFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TrackerFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books_rounded),
            title: const Text('Exams'),
            onTap: () {
              // Route menu ke halaman buku
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExamPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}



