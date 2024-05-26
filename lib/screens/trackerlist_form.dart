// import 'package:exam_tracker_mobile/widgets/left_drawer.dart';
// import 'package:flutter/material.dart';
//
// class TrackerFormPage extends StatefulWidget {
//   const TrackerFormPage({super.key});
//
//   @override
//   State<TrackerFormPage> createState() => _TrackerFormPageState();
// }
//
// class _TrackerFormPageState extends State<TrackerFormPage> {
//   final _formKey = GlobalKey<FormState>();
//   String _name = "";
//   int _grade = 0;
//   String _description = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             'Add Exam Form',
//           ),
//         ),
//         backgroundColor: Colors.indigo,
//         foregroundColor: Colors.white,
//       ),
//       drawer: const LeftDrawer(),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Exam Name",
//                     labelText: "Exam Name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _name = value!;
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Exam's name can't be empty!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Grade",
//                     labelText: "Grade",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _grade = int.tryParse(value!) ?? 0;
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Grade can't be empty!";
//                     }
//                     if (int.tryParse(value) == null) {
//                       return "Grade can't be empty!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Description",
//                     labelText: "Description",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   onChanged: (String? value) {
//                     setState(() {
//                       _description = value!;
//                     });
//                   },
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return "Description can't be empty!";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.indigo),
//                     ),
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         showDialog(
//                           context: context,
//                           builder: (context) {
//                             return AlertDialog(
//                               title: const Text('Exam has been saved!'),
//                               content: SingleChildScrollView(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Name: $_name'),
//                                     Text('Grade: $_grade'),
//                                     Text('Description: $_description'),
//                                   ],
//                                 ),
//                               ),
//                               actions: [
//                                 TextButton(
//                                   child: const Text('OK'),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                     _formKey.currentState!.reset();
//                                   },
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       }
//                     },
//                     child: const Text(
//                       "Save",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

import '../widgets/left_drawer.dart';
import 'menu.dart';

// TODO: Impor drawer yang sudah dibuat sebelumnya

class TrackerFormPage extends StatefulWidget {
  const TrackerFormPage({super.key});

  @override
  State<TrackerFormPage> createState() => _TrackerFormPageState();
}

class _TrackerFormPageState extends State<TrackerFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _grade = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Add Exam Form',
            ),
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "xam Name",
                    labelText: "Exam Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Exam name cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Grade",
                    labelText: "Grade",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _grade = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Grade cannot be empty";
                    }
                    if (int.tryParse(value) == null) {
                      return "Grade needs to be in number form!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Description cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Kirim ke Django dan tunggu respons
                        final response = await request.postJson(
                          "http://localhost:8000/create-flutter/",
                          jsonEncode(<String, String>{
                            'name': _name,
                            'grade': _grade.toString(),
                            'description': _description,

                          }),
                        );
                        if (context.mounted) {
                          if (response['status'] == 'success') {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("New exam has been added"),
                            ));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "Error occured, please retry."),
                            ));
                          }
                        }
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}

