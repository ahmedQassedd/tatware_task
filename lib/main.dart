import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart' ;
import 'package:tatware_test/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_states.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/bloc_observer/bloc_observer.dart';
import 'package:tatware_test/core/util/network/local/cache_helper.dart';
import 'package:tatware_test/core/util/network/remote/dio_helper.dart';
import 'package:tatware_test/core/util/widgets/light_theme.dart';
import 'package:tatware_test/features/home_page/presentation/page/home_page.dart';
import 'package:tatware_test/features/intro_page/presentation/page/intro_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper();
  await CacheHelper.init();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp , DeviceOrientation
    .portraitDown]
  );

  bool? boarding = CacheHelper.getData(key: 'done');

  Widget firstPage;

  if (boarding == true) {
    firstPage = HomePage();
  } else {
    firstPage = IntroPage();
  }


  runApp(MyApp(firstPage));
}

class MyApp extends StatelessWidget {
  Widget firstPage;
  MyApp(this.firstPage);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightingTheme(),
          home: firstPage ,
        );
      }),
    );
  }
}
