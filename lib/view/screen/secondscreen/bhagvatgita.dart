import 'package:flutter/material.dart';

import '../../../utils/adhayaylist.dart';

class adhyay extends StatefulWidget {
  const adhyay({super.key});

  @override
  State<adhyay> createState() => _adhyayState();
}

class _adhyayState extends State<adhyay> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color(0xfffae0af),
        child: Stack(children: [
          Stack(
            children: [
              Container(
                height: height * 0.35,
                decoration: BoxDecoration(
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
                width: width * 0.85,
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
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 19.0, top: 30),
              child: Column(
                children: [
                  SizedBox(
                      height: height * 0.2,
                      child: Image.asset('asset/img/logo.png')),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    // height: height * 0.6,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          ...List.generate(
                            adhayaylist.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/adhayayslock',
                                    arguments: index);
                              },
                              child: adhayay(
                                  img: adhayaylist[index]['img'],
                                  name1: adhayaylist[index]['name1'],
                                  name: adhayaylist[index]['name'],
                                  context: context),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget adhayay(
    {String? name1, String? name, String? img, required BuildContext context}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      height: height * 0.10,
      width: width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xfffbb624),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(width: width * 0.2, child: Image.asset(img!)),
          Container(
            width: width * 0.55,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                      child: Text(
                    name1!,
                    style: TextStyle(fontSize: 14),
                  )),
                ),
                Center(
                    child: Text(
                  name!,
                  style: TextStyle(fontSize: 22),
                )),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
