import 'package:flutter/material.dart';
import 'package:shree_gita/utils/aarti.dart';

class gita_arti extends StatelessWidget {
  const gita_arti({super.key});

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
          Expanded(
            child: Stack(
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
                          children: [
                            SizedBox(height: height*0.02,),
                            Text('गीता आरती',style: TextStyle(fontSize: 20),),
                            SizedBox(height: height*0.01,),
                            ...List.generate(artilist.length, (index) => text(artilist[index])),
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
  return Text(name!,style: TextStyle(fontSize: 17),);
}
