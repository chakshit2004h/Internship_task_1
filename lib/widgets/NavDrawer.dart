import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50.0), // Adjust this to align above the icon
      child: Container(
        width: mq.width * 0.6, // Adjust width if needed
        decoration: const BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Center(child: Image.asset("assets/images/app.png")),
                    SizedBox(height: 3,),
                    const Padding(
                      padding: EdgeInsets.only(left: 170.0),
                      child: Text("6.11.7.1",style: TextStyle(color: Colors.white),),
                    )
                ],
              ),
            ),
            // Expandable Menu Section
            Expanded(
              child: ListView(
                children: [
                  ExpansionTile(
                    title: const Text("Measurements", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    controlAffinity: ListTileControlAffinity.leading,
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.text_snippet_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Template",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.folder_copy,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Scenario",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Settings", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    controlAffinity: ListTileControlAffinity.leading,
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.browser_updated_sharp,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Test Setting",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.settings,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("General Setting",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.phone_android_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Device Setting",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.import_contacts_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Import",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.import_export_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Export",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("External Device", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    controlAffinity: ListTileControlAffinity.leading,
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.location_on_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("GPS",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.adf_scanner,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Scanner",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("File Manager", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    controlAffinity: ListTileControlAffinity.leading,
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.file_copy_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("File Manager",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),

                    ],
                  ),
                  ExpansionTile(
                    title: const Text("About", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    controlAffinity: ListTileControlAffinity.leading,
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.text_snippet_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Licence Management",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50,),
                          const Icon(Icons.question_mark_outlined,color: Colors.grey,),
                          TextButton(
                              onPressed: (){},
                              child: const Text("Help",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
