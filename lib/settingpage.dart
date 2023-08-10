import 'package:flutter/material.dart';
import 'dart:io';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Text("Setting"),
    // );
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Stack(
                  alignment: Alignment.center, //****** fas gaya ***********
                  // fit: StackFit.expand,
                  // fit: StackFit.passthrough,
                  // fit: StackFit.loose,
                  // textDirection: TextDirection.ltr,
                  textDirection: TextDirection.rtl,
                  children: [
                    Center(
                      child: Container(
                        width: 500,
                        height: 500,
                        color: Colors.red,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.topRight,
                        child: const Text(
                          "👨‍🎓 Hello Brother",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        // alignment: Alignment.center,
                        width: 250,
                        height: 250,
                        color: Colors.black,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "Hi !!!...👋👋👋👋..",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 150,
                        width: 150,
                        color: Colors.purple,
                        padding: const EdgeInsets.all(15.0),
                        child: const Center(
                          child: Text(
                            "Hello Brother",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 220,
                  width: 300,
                  child: Card(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 7,
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Sanjiv Kushwaha",
                              style: TextStyle(fontSize: 25),
                            ),
                            subtitle: Text(
                              "👌👀",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            ButtonBar(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: handleButtonPress,
                                      onLongPress: onLongPress,
                                      // child: FloatingActionButton.extended(
                                      //   label: Text("Contact"),
                                      //   icon: Icon(Icons.call),
                                      //   onPressed: () {
                                      //     handleButtonPress;
                                      //   },
                                      // ),

                                      child: Row(
                                        children: [
                                          Icon(Icons.call),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('Contact'),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    ElevatedButton(
                                      onPressed: handleButtonPress,
                                      onLongPress: onLongPress,
                                      child: Text('Location'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: handleButtonPress,
                                      child: Text("Contact"),
                                      // onPressed: () {
                                      //   stdout.write("Text Button pressed");
                                      // },
                                      // onLongPress: () {
                                      //   stdout.write("Long pressed");
                                      // },
                                    ),
                                    SizedBox(width: 5),
                                    OutlinedButton(
                                      // onPressed: () {
                                      //   stdout.write("Outlined  Button pressed");
                                      // },
                                      // onLongPress: () {
                                      //   stdout.write("Long pressed");
                                      // },
                                      onPressed: handleButtonPress,
                                      onLongPress: onLongPress,
                                      child: Text('Location'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void handleButtonPress() {
  stdout.write("Button pressed");
  return;
}

void onLongPress() {
  stdout.write("Long pressed");
  return;
}

// *****************************************************

