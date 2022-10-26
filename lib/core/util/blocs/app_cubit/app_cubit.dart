import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_test/core/models/expert_model.dart';
import 'package:tatware_test/core/util/blocs/app_cubit/app_states.dart';
import 'package:tatware_test/core/util/widgets/navigete_to.dart';
import 'package:tatware_test/features/chat_page/presentation/page/chat_page.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitState());

  static AppCubit get(context) => BlocProvider.of(context);


  int currentPage = 0;
  bool myMessage = false ;
  bool message = false ;
  bool check1 = true ;
  bool check2 = false ;
  bool check3 = false ;
  bool check4 = false ;
  bool check5 = true ;



  void changeBottomPage(index , context ) {
    currentPage = index;
    if(currentPage == 3){
      navigateTo(context: context, widget: ChatPage());
    }
    emit(BottomNavShopState());
  }

  List<ExpertModel> expert = [
    ExpertModel(image: 'assets/person1.jpg', rate : '5.0' , name : 'Kareem Adel', subtitle : 'Supply Chain'),
    ExpertModel(image: 'assets/person2.jpg', rate : '4.9' , name : 'Merna Adel', subtitle : 'Supply Chain'),
  ];


  void sendMessage(){

    myMessage = !myMessage ;
    message = !message ;

    emit(SendMessageState());
  }

  void check11(value){

    check1 = value ;

    emit(check1State());
  }

  void check22(value){

    check2 = value ;

    emit(check2State());
  }

  void check33(value){

    check3 = value ;

    emit(check3State());
  }

  void check44(value){

    check4 = value ;

    emit(check4State());
  }

  void check55(value){

    check5 = value ;

    emit(check5State());
  }

}









