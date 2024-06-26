// import 'package:exam_tracker_mobile/widgets/left_drawer.dart';
// import 'package:flutter/material.dart';
// import 'package:exam_tracker_mobile/widgets/tracker_list.dart';
//
// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//
//   final List<TrackerItem> items = [
//     TrackerItem("Exams", Icons.pages),
//     TrackerItem("Add Exam", Icons.add),
//     TrackerItem("Logout", Icons.logout),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Exam Tracker',
//         ),
//         backgroundColor: Colors.indigo,
//         foregroundColor: Colors.white,
//       ),
//       // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
//       drawer: const LeftDrawer(),
//       body: SingleChildScrollView(
//         // Widget wrapper yang dapat discroll
//         child: Padding(
//           padding: const EdgeInsets.all(10.0), // Set padding dari halaman
//           child: Column(
//             // Widget untuk menampilkan children secara vertikal
//             children: <Widget>[
//               const Padding(
//                 padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
//                 // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
//                 child: Text(
//                   'PBP\'s Tracker', // Text yang menandakan tracker
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               // Grid layout
//               GridView.count(
//                 // Container pada card kita.
//                 primary: true,
//                 padding: const EdgeInsets.all(20),
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 crossAxisCount: 3,
//                 shrinkWrap: true,
//                 children: items.map((TrackerItem item) {
//                   // Iterasi untuk setiap item
//                   return TrackerCard(item);
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }

import 'package:flutter/material.dart';

// Impor drawer widget

import '../widgets/left_drawer.dart';
import '../widgets/tracker_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  final List<TrackerItem> items = [
    TrackerItem("Exams", Icons.pages),
    TrackerItem("Add Exam", Icons.library_add_rounded),
    TrackerItem("Logout", Icons.logout),
  ];

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exam Tracker',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'PBP\'s Tracker', // Text yang menandakan tracker
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((TrackerItem item) {
                  // Iterasi untuk setiap item
                  return TrackerCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
