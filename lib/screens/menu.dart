import 'package:flutter/material.dart';
import 'package:exam_tracker_mobile/widgets/tracker_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<TrackerItem> items = [
    TrackerItem("Exams", Icons.pages),
    TrackerItem("Add Exam", Icons.add),
    TrackerItem("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Tracker',
        ),
      ),
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