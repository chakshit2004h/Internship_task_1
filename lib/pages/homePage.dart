import 'package:buddy/widgets/NavDrawer.dart';
import 'package:buddy/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'bottomNavigator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Size mq;
  bool isExpanded_1 = true;
  bool isExpanded_2 = true;
  bool isExpanded_3 = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        title: const Text(
          "PING",
          style: TextStyle(
              color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<String>(
            color: Colors.black87,
            icon: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.white,
              size: 30,
            ),
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                    value: 'Option 1',
                    child: Text("web",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                  value: 'Option 2',
                  child: Text("FTP_DL_500M",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                    value: 'Option 3',
                    child: Text("FTP_DL_5MB",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                    value: 'Option 3',
                    child: Text("FTP_UL_1MB",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                    value: 'Option 4',
                    child: Text("HTTP_DL_5MB",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                    value: 'Option 5',
                    child: Text("NONE",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
                const PopupMenuItem(
                    value: 'Option 6',
                    child: Text("PING",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ),
              ];
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 35,
            ),
          ),
          PopupMenuButton<String>(
            color: Colors.black87,
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Option 1',
                  child: Row(children: [Icon(Icons.arrow_right_outlined,size: 50,color: Colors.white,),Text("Measurement Start",style: TextStyle(color: Colors.white,fontSize: 15,),)],)
                ),
                const PopupMenuItem(
                  value: 'Option 2',
                  child: Row(children: [SizedBox(width: 15,),Icon(Icons.watch_later,size: 20,color: Colors.white,),SizedBox(width: 10,),Text("Monitor Start",style: TextStyle(color: Colors.white,fontSize: 15,),)],),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 322,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Top black container
                Positioned(
                  top: 0,
                  child: Container(
                    width: mq.width,
                    height: mq.height * 0.015,
                    color: Colors.black87,
                  ),
                ),
                // Grey container
                Positioned(
                  top: mq.height * 0.015,
                  child: Container(
                    width: mq.width,
                    height: mq.height * 0.015,
                    color: Colors.grey,
                  ),
                ),
                // Bottom black container
                Positioned(
                  top: mq.height * 0.03,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: mq.width,
                        height: isExpanded_1 || isExpanded_2 || isExpanded_3? mq.height * 5 : mq.height * 03,
                        color: Colors.black87,
                        child: const Column(
                          children: [
                            mainPage(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Blue elevated container
                Positioned(
                  top: mq.height * 0.01,
                  left: mq.width * 0.4,
                  child: Material(
                    elevation: 8, // Elevation for shadow
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: mq.width * 0.2,
                      height: mq.height * 0.04,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "NR(SA)",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.4,vertical: 10),
                      child: const Text("Test Type",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.4),
                      child: const Text("  Ping",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.4),
                      child: const Text(" Test Run",style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.4),
                      child: const Text("     0",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      width: double.infinity,
                      height: mq.height*.001,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Setting",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Log Mask:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Medium with RTP",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Incident:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Disable",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Wait until Log Packets:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Enable",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("CSV KPI:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Default",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("File Creation:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Msig, Incident, CSV",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: mq.height*.001,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Template Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Idle Time(s):",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("5",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Locking Confirmation:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Disable",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Server:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("sigmaml.sakura.ne.jp",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Pings Per Test:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("10",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Packet Size:",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("64",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Interval(ms):",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("200",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Timeout(s):",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Abort Time(s):",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("0",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}