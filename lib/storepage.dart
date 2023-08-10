import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Text("Store"),
    // );
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Hello!!! Coders. You are here with this new event based on Flutter!!!!",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  backgroundColor: Colors.amberAccent,
                  letterSpacing: 2.0,
                  wordSpacing: 10.0,
                  shadows: [
                    Shadow(
                      color: Colors.lightBlueAccent,
                      offset: Offset(2.0, 2.0),
                    ),
                  ]),
            ),
          ),
          RichText(
            text: const TextSpan(
              text: 'Hello ! ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 50,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Coders',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          const Forms(),
        ],
      ),
    );
  }
}

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>(); //************
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: Center(
          child: Form(
            key: keys,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "Enter Your Name",
                      icon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "please fill the details";
                      }
                      return null;
                    },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "please fill the details";
                    //   }
                    //   return null;
                    // },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Bank Account Password",
                      icon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "please fill the details";
                      }
                      return null;
                    },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "please fill the details";
                    //   }
                    //   return null;
                    // },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Github Link",
                      hintText: "Github",
                      icon: Icon(Icons.link),
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "please fill the details";
                      }
                      return null;
                    },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "please fill the details";
                    //   }
                    //   return null;
                    // },
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ElevatedButton(
                          child: const Text("Submit"),
                          onPressed: () {
                            if (keys.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Validation is Going On")));
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
