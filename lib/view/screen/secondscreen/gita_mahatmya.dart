import 'package:flutter/material.dart';
import 'package:shree_gita/utils/mahatmay.dart';

class gita_mahatmay extends StatelessWidget {
  const gita_mahatmay({super.key});

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
      ),
      body: Container(
        color: Color(0xfffae0af),
        child: Stack(children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: height * 0.35,
                  decoration: BoxDecoration(
                      color: Color(0xfffbb010),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200, 30),
                          bottomRight: Radius.elliptical(200, 30))),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfffbb624),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: height*0.02,),
                            Text('गीता माहात्म्य',style: TextStyle(fontSize: 21),),
                            SizedBox(height: height*0.02,),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(mahatmay.length, (index) => text(mahatmay[index])),
                              ),
                            ),
                            // ...List.generate(mahatmay.length, (index) => text(mahatmay[index])),
                            SizedBox(height: height*0.02,),
                          ],
                        ),
                      ),
                    ),
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
Text text(String?name)
{
  return Text(name!,textAlign: TextAlign.center,overflow: TextOverflow.clip,style: TextStyle(fontSize: 20),);
}