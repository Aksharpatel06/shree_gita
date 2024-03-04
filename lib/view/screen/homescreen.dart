import 'package:flutter/material.dart';
import 'package:shree_gita/view/screen/secondscreen/bhagvatgita.dart';
import 'package:shree_gita/view/screen/secondscreen/gita_arti.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
            padding: const EdgeInsets.only(left: 19.0,top: 30),
            child: Column(
              children: [
                SizedBox(height: height*0.2,
                    child: Image.asset('asset/img/logo.png')),
                SizedBox(height: height*0.04,),
                Container(
                  height: height*0.6,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: height*0.02,),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => adhyay(),));
                          },
                          child: Container(
                            height: height*0.12,
                            width: width*0.8,
                            decoration: BoxDecoration(
                              color: Color(0xfffbb624),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Image.asset('asset/img/img3.png'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 20),
                                  child: Text('भगवद गीता',style: TextStyle(fontSize: 28),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.02,),
                        Container(
                          height: height*0.12,
                          width: width*0.8,
                          decoration: BoxDecoration(
                            color: Color(0xfffbb624),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: SizedBox(height: height*0.09,
                                    child: Image.asset('asset/img/img1.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 20),
                                child: Text('गीता सार',style: TextStyle(fontSize: 28),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.02,),
                        Container(
                          height: height*0.12,
                          width: width*0.8,
                          decoration: BoxDecoration(
                            color: Color(0xfffbb624),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: SizedBox(height: height*0.09,
                                    child: Image.asset('asset/img/img4.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 20),
                                child: Text('गीता महात्म्य',style: TextStyle(fontSize: 28),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.02,),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/arti');
                          },
                          child: Container(
                            height: height*0.12,
                            width: width*0.8,
                            decoration: BoxDecoration(
                              color: Color(0xfffbb624),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: SizedBox(height: height*0.09,
                                      child: Image.asset('asset/img/img2.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 20),
                                  child: Text('गीता आरती',style: TextStyle(fontSize: 28),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
