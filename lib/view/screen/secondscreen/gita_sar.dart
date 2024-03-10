import 'package:flutter/material.dart';

class gitta_saar extends StatefulWidget {
  const gitta_saar({super.key});

  @override
  State<gitta_saar> createState() => _gitta_saarState();
}

class _gitta_saarState extends State<gitta_saar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Container(
        color: const Color(0xfffae0af),
        child: Stack(children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: height * 0.35,
                  decoration: const BoxDecoration(
                      color: Color(0xfffbb010),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200, 30),
                          bottomRight: Radius.elliptical(200, 30))),
                ),
                Container(
                  height: height * 0.28,
                  decoration: BoxDecoration(
                      color: Color(0xfffbbb37),
                      // color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(50, 5),
                          bottomRight: Radius.elliptical(300, 100))),
                ),
                Container(
                  height: height * 0.24,
                  width: width*0.85,
                  decoration: BoxDecoration(
                      color: Color(0xfff8ca67),
                      // color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 10),
                        bottomRight: Radius.elliptical(1000, 600),
                        // topRight: Radius.elliptical(50, 90)
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                SizedBox(
                    height: height * 0.2,
                    child: Image.asset('asset/img/logo.png')),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  height: height * 0.6155,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
