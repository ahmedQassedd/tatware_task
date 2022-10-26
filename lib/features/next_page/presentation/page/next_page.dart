import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_states.dart';
import 'package:tatware_test/features/next_page/presentation/widgets/next_widgets.dart';


class NextPage extends StatelessWidget {
  NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(

         body: mainWidgetForNextPage(context),

        );


      },
    );
  }
}
