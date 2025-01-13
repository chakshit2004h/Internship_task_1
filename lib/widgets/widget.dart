import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  late Size mq;
  bool isExpanded_1 = true;
  bool isExpanded_2 = true;
  bool isExpanded_3 = true;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              isExpanded_1 = !isExpanded_1;
            });
          },
          child: AnimatedContainer(
            width: double.infinity,
            height: isExpanded_1 ? mq.height * 0.09 : mq.height*.2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
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
        ),
        Container(height: mq.height*.002,color: Colors.white,),
        GestureDetector(
          onTap: (){
            setState(() {
              isExpanded_2 = !isExpanded_2;
            });
          },
          child: AnimatedContainer(
            width: double.infinity,
            height: isExpanded_2 ? mq.height * 0.09 : mq.height*.2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
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
        ),
        Container(height: mq.height*.002,color: Colors.white,),
        GestureDetector(
          onTap: (){
            setState(() {
              isExpanded_3 = !isExpanded_3;
            });
          },
          child: AnimatedContainer(
            width: double.infinity,
            height: isExpanded_3 ? mq.height * 0.09 : mq.height*.2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
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
        ),
      ],
    );
  }
}
