import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Text("Home"),
    // );
    // *************** cliprrect widget in flutter **********************************
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    // borderRadius:
                    // const BorderRadius.all(Radius.elliptical(20, 20)),
                    // borderRadius: const BorderRadius.only(
                    //   topLeft: Radius.circular(80),
                    //   bottomRight: Radius.circular(20),
                    // ),

                    child: Image.asset(
                      'image/joker.jpg',
                      height: 600,
                      width: 350,
                      // fit: BoxFit.contain,
                      fit: BoxFit.cover,
                      // fit: BoxFit.fill,
                      // color: Colors.white,
                      // colorBlendMode: BlendMode.color,
                      semanticLabel: 'joker',
                      // matchTextDirection: true,
                      matchTextDirection: false,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                // borderRadius:
                // const BorderRadius.all(Radius.elliptical(20, 20)),
                // borderRadius: const BorderRadius.only(
                //   topLeft: Radius.circular(80),
                //   bottomRight: Radius.circular(20),
                // ),

                child: Image.network(
                  "https://i0.wp.com/www.zeetalwara.com/wp-content/uploads/2021/12/namah-shivaya-photos.jpg?w=694&ssl=1",
                  // "https://www.bhaktiphotos.com/wp-content/uploads/2021/01/lord-shiva-8k-ultra-hd-wallpapers.jpg",
                  // height: 300,
                  // width: 400,
                  // fit: BoxFit.contain,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "ऊऺ नम∶ शिवऻय",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.amberAccent,
                    letterSpacing: 4.0,
                    wordSpacing: 15.0,
                    shadows: [
                      Shadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(2.0, 2.0),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
