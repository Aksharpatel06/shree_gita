import 'package:flutter/material.dart';

import '../../../utils/adhayaylist.dart';

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
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: const Color(0xfffae0af),
        child: Stack(children: [
          Stack(
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
                    // height: height * 0.6155,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(adhayaylist.length, (index) => saar(index,context)),
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
  Widget saar(int? index,BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfffbb624),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0,bottom: 4),
              child: Text(adhayaylist[index!]['name1'],style: TextStyle(fontSize: 12)),
            ),
            SizedBox(height: height*0.001,),
            Text(adhayaylist[index!]['name'],style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(adhayaylist[index!]['saar'],textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ),
            Container(
              height: height*0.01,
              width: width*0.95,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
            ),
            SizedBox(height: height*0.0005,)
          ],
        ),
      ),
    );
  }
}

