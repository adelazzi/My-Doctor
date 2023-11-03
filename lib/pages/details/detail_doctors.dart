// ignore_for_file: must_be_immutable

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:mydoc1/tools/appbar.dart';
import 'package:flutter/material.dart';
import 'package:mydoc1/constant.dart';

//complet :) ;)
class doc_page extends StatelessWidget {
  var img;
  var name;
  var spec;
  var place;
  var numb1;
  var numb2;

  doc_page(
    this.name,
    this.spec,
    this.place,
    this.numb1,
    this.numb2,
    this.img,
  );
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgrond,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: ClipPath(
              clipper: custem(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [backgrond, appbar, appbar],
                    tileMode: TileMode.mirror,
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              )),
          toolbarHeight: size.height * .35,
          actions: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: BackButton(),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: write,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    )),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  child: Image.asset(img),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding:  EdgeInsets.only(right:10),
          child: Container(
            color: backgrond,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "التخــصص ",
                      style: TextStyle(
                        color: write1,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "      $spec",
                      style: TextStyle(
                        color: write1,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "المـــوقع",
                      style: TextStyle(
                        color: write1,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "      $place",
                      style: TextStyle(
                        color: write1,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: customButton(size, context)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customButton(Size size, BuildContext context) {
    return InkWell(
      onTap: () => {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          )),
          builder: (context) => Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.mirror,
                    colors: [appbar,backgrond]),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(width: 40,height:4,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,),)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(
                              padding:EdgeInsets.only(right: 9,left: 9),
                              decoration: BoxDecoration(
                                border:Border.all(width: 2 ,color: callcolor,),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: InkWell(
                                onTap: () =>
                                {FlutterPhoneDirectCaller.callNumber(numb1)},
                                child: Row(

                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: Colors.green,
                                    ),
                                    Text(numb1)
                                  ],
                                ),
                              ),
                            ),],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(
                                padding:EdgeInsets.only(right: 9,left: 9),
                                decoration: BoxDecoration(
                                  border:Border.all(width: 2 ,color: callcolor,),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: InkWell(
                                  onTap: () =>
                                  {FlutterPhoneDirectCaller.callNumber(numb2)},
                                  child: Row(

                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.green,
                                      ),
                                      Text(numb2)
                                    ],
                                  ),
                                ),
                              ),],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Container(
                              child: Text(
                                "تمنــياتنا لكم الشفاء العاجل",
                                style: TextStyle(
                                  color: box,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: size.height / 15,
                            width: size.width / 2.5,
                            decoration: BoxDecoration(
                              color: appbar,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 20),
                                  blurRadius: 20,
                                  spreadRadius: -10,
                                  color: appbar,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("رجــــوع",style: TextStyle(color: callcolor,fontWeight: FontWeight.w500,fontSize: 17,),)),
                          )),
                    )
                  ]),
            ),
          ),
        )
      },
      child: Container(
        height: size.height / 15,
        width: size.width / 2.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: appbar,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 20),
                blurRadius: 20,
                spreadRadius: -10,
                color: appbar,
              ),
            ]),
        alignment: Alignment.center,
        child: Text(
          "أحـــجز الأن",
          style: TextStyle(
            fontSize: 17,
            color: callcolor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
