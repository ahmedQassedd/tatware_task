import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:tatware_test/core/util/const.dart';
import 'package:tatware_test/core/util/network/local/cache_helper.dart';





Widget mainWidgetForChatPage(context ,controller) => Column(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          messageItem(context , 'Hi, What\'s Your Name ?' , Container()) ,
          if(AppCubit.get(context).myMessage)
            myMessageItem(context , controller ),

          if(AppCubit.get(context).message)
            messageItem(context , 'Welcome $userName, \nWhat Categories you will need expert In?' , Column(children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Checkbox(

                    checkColor: Colors.white,
                    value: AppCubit.get(context).check1,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {

                      AppCubit.get(context).check11(value);
                    },
                  ),
                  Text('Security', style: Theme.of(context).textTheme.caption, ),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Checkbox(

                    checkColor: Colors.white,
                    value: AppCubit.get(context).check2,
                    shape: const CircleBorder(),
                    onChanged: (value) {
                      AppCubit.get(context).check22(value);
                    },
                  ),
                  Text('Supply Chain', style: Theme.of(context).textTheme.caption, ),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Checkbox(

                    checkColor: Colors.white,
                    value: AppCubit.get(context).check3,
                    shape: const CircleBorder(),
                    onChanged: (value) {
                      AppCubit.get(context).check33(value);
                    },
                  ),
                  Text('Information Technology', style: Theme.of(context).textTheme.caption, ),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Checkbox(

                    checkColor: Colors.white,
                    value: AppCubit.get(context).check4,
                    shape: const CircleBorder(),
                    onChanged: (value) {
                      AppCubit.get(context).check44(value);
                    },
                  ),
                  Text('Human Resource', style: Theme.of(context).textTheme.caption, ),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Checkbox(

                    checkColor: Colors.white,
                    value: AppCubit.get(context).check5,
                    shape: const CircleBorder(),
                    onChanged: ( value) {
                      AppCubit.get(context).check55(value);
                    },
                  ),
                  Text('Business Research', style: Theme.of(context).textTheme.caption, ),

                ],),
              ),
            ],),),



        ],),
    ),
    Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[200],

        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 15),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                        suffixIcon: Image(image: AssetImage('assets/voice.png' ), height: 2,),
                        prefixIcon: Image(image: AssetImage('assets/world.png') , height: 2,),
                        border: InputBorder.none,
                        hintText: 'Type something…'),
                  ),
                ),
              ),
            ),

            const SizedBox(
              width: 5.0,
            ),

            InkWell(
                onTap: (){
                  if (controller.text.isNotEmpty) {

                    CacheHelper.saveData(key: 'userName', value: controller.text).then((value) {
                      AppCubit.get(context).sendMessage();
                    });

                    userName = CacheHelper.getData(key: 'userName');

                    controller.clear();


                  }

                },
                child: const SizedBox(
                    width: 30,
                    height: 30,
                    child: Image(image: AssetImage('assets/send.png')))),

          ],
        ),
      ),
    ],),

  ],);







Widget messageItem(context , message , widget) => Align(
  alignment: AlignmentDirectional.centerStart,
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Container(
              padding: const EdgeInsets.all(5),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child: const Image(image: AssetImage('assets/robotChat.png'))),

          const SizedBox(width: 6,),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                message,

                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
        ],),
        widget ,
      ],),
  ),
);



Widget myMessageItem(context , controller) => Align(
  alignment: AlignmentDirectional.centerEnd,
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.circular(10),
            color: primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              userName!,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 10,) ,
        const SizedBox(
            width: 20,
            height: 20,
            child: Image(image: AssetImage('assets/checkIcon.png'))) ,

      ],),

  ),
);