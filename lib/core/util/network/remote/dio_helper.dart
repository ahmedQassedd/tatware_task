import 'package:dio/dio.dart';
import 'package:tatware_test/core/util/network/remote/end_points.dart';

class DioHelper {
  static Dio? dio;

  DioHelper._internal(){
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static final DioHelper _instance = DioHelper._internal();


  factory DioHelper (){
    return _instance ;
  }



















}
