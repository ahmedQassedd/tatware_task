import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tatware_test/core/util/const.dart';
import 'package:tatware_test/core/util/network/local/cache_helper.dart';
import 'package:tatware_test/core/util/widgets/button.dart';
import 'package:tatware_test/core/util/widgets/navigate_and_finish.dart';
import 'package:tatware_test/features/home_page/presentation/page/home_page.dart';

Widget mainWidgetForNextPage(context) => Padding(
 padding: const EdgeInsets.only(top: 100),
 child:   SafeArea(
   child: Column(children: [
     Expanded(
       child: Column(
         children: [
           SizedBox(

             width: double.infinity,

             child: Stack(

               alignment: Alignment.topCenter,

               children:  const [



                 SizedBox(

                     width: 150,

                     height: 150,

                     child: Image(image: AssetImage('assets/text.png'))),



                 SizedBox(

                     width: 200,

                     height: 200,

                     child: Image(image: AssetImage('assets/line.png'))),

               ],

             ),

           ),

           const SizedBox(
               width: 200,
               height: 300,

               child: Image(image: AssetImage('assets/robot.png'))),



           customButton(text: 'Next', width: 130 , color: primaryColor, onPressed: (){

             CacheHelper.saveData(key: 'done', value: true).then((value) {
               navigateAndFinish(context: context, widget: HomePage());
             });



           }),






         ],),
     ),

     const SizedBox(
         width: 60,
         height: 50,

         child: Image(image: AssetImage('assets/en.png'))),
   ],),
 ),
);