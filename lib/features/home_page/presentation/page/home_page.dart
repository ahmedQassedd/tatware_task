import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_states.dart';
import 'package:tatware_test/features/home_page/presentation/widgets/home_widgets.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(

          appBar: homeAppBar(context),
         body: mainWidgetForHomePage(context),
          bottomSheet: bottomSheet(context),
          bottomNavigationBar: bottomNavBar(context),



        );
      },
    );
  }
}


