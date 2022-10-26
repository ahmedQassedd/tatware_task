import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tatware_test/core/util/const.dart';
import 'package:tatware_test/core/util/widgets/button.dart';
import 'package:tatware_test/core/util/widgets/navigate_and_finish.dart';
import 'package:tatware_test/features/next_page/presentation/page/next_page.dart';

Widget mainWidgetForIntroPage(context) => Stack(children: [

 Container(

decoration: const BoxDecoration(

image: DecorationImage(

image:  AssetImage('assets/boarding.png'),

fit: BoxFit.cover),

),

 ),

 SizedBox(
  width: double.infinity,
   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

     Padding(
       padding: const EdgeInsets.all(8),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Text('Oranos', style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black, fontWeight: FontWeight.bold), ),

       const CircleAvatar(radius: 4,)
       ],),
     ),
     Text('Expert From Every Planet', style: Theme.of(context).textTheme.bodyMedium, ),





    ],),
 ),

 
 Padding(
  padding: const EdgeInsets.all(25),
   child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

    customButton(text: 'Get started',  color: primaryColor, onPressed: (){
     navigateAndFinish(context: context, widget: NextPage());
    }),

     const SizedBox(height: 8,),

     Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: [
        Text('Don\'t have an account?', style: Theme.of(context).textTheme.caption, ),
        const SizedBox(width: 4,),

        InkWell(
         onTap: (){},
            child: Text('Sign Up', style: Theme.of(context).textTheme.caption!.copyWith(color: primaryColor, fontWeight: FontWeight.bold ), )),
       ],),
     ),

     const SizedBox(height: 8,),

     const SizedBox(
         width: 65,
         height: 15,
         child: Image(image: AssetImage('assets/en.png'))),




   ],),
 ),





],);