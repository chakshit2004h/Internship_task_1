import 'package:buddy/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

class PingPage extends StatefulWidget {
  const PingPage({super.key});

  @override
  State<PingPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<PingPage> {
  late Size mq;
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          )
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
                  child: SingleChildScrollView(
                    child: Container(
                      width: mq.width,
                      height: mq.height * 0.3,
                      color: Colors.black87,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: mq.height * 0.09,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: mq.height * 0.03),
                                  child: const Text(
                                    "LTE",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // Wrap the columns in a horizontally scrollable view
                                const Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Band",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "EARFCN",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Freq",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "DL BW",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "RSRP",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "SINR",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "PDSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "PUSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(height: mq.height*.002,color: Colors.white,),
                          Container(
                            width: double.infinity,
                            height: mq.height * 0.09,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: mq.height * 0.03),
                                  child: const Text(
                                    "NR",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // Wrap the columns in a horizontally scrollable view
                                const Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR Band",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR ARFCN",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR Freq",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR DL BW",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR RSRP",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR SINR",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR PDSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "NR PUSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(height: mq.height*.002,color: Colors.white,),
                          Container(
                            width: double.infinity,
                            height: mq.height * 0.09,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: mq.height * 0.03),
                                  child: const Text(
                                    "LTE",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // Wrap the columns in a horizontally scrollable view
                                const Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Band",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "EARFCN",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "Freq",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "DL BW",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "RSRP",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "SINR",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "PDSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.0, top: 15),
                                          child: Column(
                                            children: const [
                                              Text(
                                                "PUSCH",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "--",
                                                style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
          Container(
            width: double.infinity,
            height: 465,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.05,vertical: mq.height*.015),
                      child: const Text("RAT",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.05,vertical: mq.height*.015),
                      child: const Text("Country Name",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.05,vertical: mq.height*.015),
                      child: const Text("NW Operator Name",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                  ],
                ),
                SizedBox(height: mq.height*.04),
                Container(height: mq.height*.001, color: Colors.white),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                          child: const Text("Server",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.0005),
                          child: Text("sigmami.sakura.ne.jp",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mq.width*.005,vertical: mq.height*.015),
                          child: const Text("Pings Per Test",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mq.width*.005,vertical: mq.height*.0005),
                          child: Text("10",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: mq.height*.02),
                Container(height: mq.height*.001, color: Colors.grey),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                      child: const Text("Count",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.06,vertical: mq.height*.015),
                      child: const Text("Max",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.06,vertical: mq.height*.015),
                      child: const Text("Min",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                      child: const Text("Avg",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    )
                  ],
                ),
                SizedBox(height: mq.height*.02),
                Container(height: mq.height*.001, color: Colors.grey),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                      child: const Text("#",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                      child: const Text("TTL",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width*.1,vertical: mq.height*.015),
                      child: const Text("Ping Time (ms)",style: TextStyle(color: Colors.white,fontSize: 18),),
                    )
                  ],
                ),
                Container(height: mq.height*.001, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
      endDrawer: drawer(),
    );;
  }
}
