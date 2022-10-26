import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:tatware_test/core/models/expert_model.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:tatware_test/core/util/const.dart';


AppBar homeAppBar(context) => AppBar(
  elevation: 0.5,
  backgroundColor: Colors.white ,
  actions: const [Image(image: AssetImage('assets/search.png'),)],
  leading: const Image(image: AssetImage('assets/leading.png'),),
  title: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Text('Oranos', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.bold), ),

    const CircleAvatar(radius: 3,)
  ],),


);

Widget mainWidgetForHomePage(context) => Padding(

  padding: const EdgeInsets.all(10),
  child:   Column(children: [

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Recommended Experts', style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 1.0 ), ),

        const Image(image: AssetImage('assets/icon.png'),)
      ],),

    const SizedBox(height: 15,),
    SizedBox(
      height: 250,
      child: ListView.separated(
          scrollDirection: Axis.horizontal ,
          itemBuilder: (context, index) => expertItem(AppCubit.get(context).expert[index] , context),
          separatorBuilder: (context, index) => const SizedBox(
            width: 8,
          ),
          itemCount: AppCubit.get(context).expert.length),
    ),
    const SizedBox(height: 35,),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Online Experts', style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 1.0 ), ),

        const Image(image: AssetImage('assets/icon.png'),)
      ],),

    const SizedBox(height: 20,),

    SizedBox(
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal ,
          itemBuilder: (context, index) => onlineItem(context),
          separatorBuilder: (context, index) => const SizedBox(
            width: 8,
          ),
          itemCount: 15),
    ),


  ],),
);


Widget expertItem(ExpertModel model , context) =>  Container(

  width: 165,
  height: 250,

  decoration: BoxDecoration(

    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),



  ),

  clipBehavior: Clip.antiAliasWithSaveLayer,

  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Image(

        image: AssetImage(

            model.image),

        width: 165 ,

        height: 160,

        fit: BoxFit.cover,

      ),

    Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children:  [
              const Icon(Icons.star , color: Colors.amber,) ,
              const SizedBox(width: 4,),
              Text('(${model.rate})' , style: const TextStyle(color: Colors.grey),),
            ],),
            const Icon(Icons.favorite , color: Colors.grey,) ,

          ],),

        const SizedBox(height: 10,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(model.name, style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black), ),
          const SizedBox(height: 4,),
          Text(model.subtitle, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey), ),
        ],),
      ],),
    ),





    ],

  ),
);


Widget onlineItem(context) => Column(children: [

  Stack(

  alignment: Alignment.topRight,

  children:     [

    const CircleAvatar(

      radius: 40,

      backgroundImage: AssetImage('assets/people.jpg') ,

    ),



    Padding(
      padding: const EdgeInsets.all(6),

      child: CircleAvatar(

        radius: 4,

        backgroundColor: primaryColor ,

      ),
    ),

  ],

),

  const SizedBox(height: 8,),
  Text('Ahmed' , style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.grey),)

],);



Widget bottomSheet(context) => SolidBottomSheet(
  draggableBody: true,
  headerBar: const SizedBox(
    height: 30,
    child:  Center(
        child: SizedBox(width: double.infinity , height: 40 , child: Text('_____' , textAlign: TextAlign.center ,style: TextStyle(color: Colors.grey),),)
    ),
  ),
  body: categories(context) ,


);



Widget categories (context) => SingleChildScrollView(
  physics: const BouncingScrollPhysics(),
  child:   Column(children: [

    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/1.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Information Technology' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('23 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),
    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/2.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Supply Chain' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('12 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),
    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/3.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Security' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('14 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),
    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/4.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Human Resource' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('8 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),
    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/5.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Immigration' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('18 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),
    Padding(

      padding: const EdgeInsets.all(15),

      child: Column(children: [

        Container(

          width: double.infinity ,

          height: 60 ,

          decoration: BoxDecoration(

            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children:  [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: Image(image: AssetImage('assets/6.png'))),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Translation' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black54),),
                        const SizedBox(height: 4,),
                        Text('3 Experts' , style: Theme.of(context).textTheme.caption,)


                      ],),
                  ],),
                  const Icon(Icons.keyboard_arrow_right_outlined , color: Colors.grey,),
                ],)
          ),

        ),







      ],),

    ),

  ],),
);



Widget bottomNavBar(context) => BottomNavigationBar(
  onTap: (index) {
    AppCubit.get(context).changeBottomPage(index , context);
  },
  currentIndex: AppCubit.get(context).currentPage,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home) , label: ''),
    BottomNavigationBarItem(
        icon: Icon(Icons.star), label: ''),
    BottomNavigationBarItem(
        icon: Icon(Icons.credit_card_rounded), label: ''),
    BottomNavigationBarItem(
        icon: Icon(Icons.chat), label: ''),

  ],
);


