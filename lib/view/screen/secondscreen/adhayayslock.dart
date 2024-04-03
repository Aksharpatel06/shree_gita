import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_extend/share_extend.dart';
import '../../../utils/adhayaylist.dart';

class adhayayslock extends StatefulWidget {
  const adhayayslock({super.key});

  @override
  State<adhayayslock> createState() => _adhayayslockState();
}

class _adhayayslockState extends State<adhayayslock> {
  @override
  Widget build(BuildContext context) {

    int adhayayIndex = ModalRoute.of(context)!.settings.arguments as int;

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
            child: Container(
              // width: width,
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
                        child: Column(
                          children: List.generate(adhayaylist[adhayayIndex]['chapter'].length, (index) => adhyayslock(index,context,adhayayIndex)),
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
  Widget adhyayslock(int index,BuildContext context,int index2)
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
            (index==0)?Padding(
              padding: const EdgeInsets.only(top: 12.0,bottom: 4),
              child: Text(adhayaylist[index2]['name1'],style: TextStyle(fontSize: 12)),
            ):Container(),
            (index==0)?SizedBox(height: height*0.001,):SizedBox(),
            (index==0)?Text(adhayaylist[index2]['name'],style: TextStyle(fontSize: 20),):Text(''),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(adhayaylist[index2]['chapter'][index]['san'],textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(adhayaylist[index2]['chapter'][index]['hindi'],textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ),
            Container(
              height: height*0.05,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: () {
                     Clipboard.setData(ClipboardData(text:'${adhayaylist[index2]['chapter'][index]['san']}   ${adhayaylist[index2]['chapter'][index]['hindi']}' ));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text(
                        'Copied',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ));
                  },child: Text('Copy',style: TextStyle(color: Color(0xfffbbb37),fontWeight: FontWeight.w500),)),
                  InkWell(onTap:() {
                    setState(() {
                      ShareExtend.share('${adhayaylist[index2]['chapter'][index]['san']}   ${adhayaylist[index2]['chapter'][index]['hindi']}', 'text');
                    });
                  },child: Text('Share',style: TextStyle(color: Color(0xfffbbb37),fontWeight: FontWeight.w500),))
                ],
              ),
            ),
            SizedBox(height: height*0.0005,)
          ],
        ),
      ),
    );
  }
}
