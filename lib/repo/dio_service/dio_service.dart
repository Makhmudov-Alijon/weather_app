
import 'package:dio/dio.dart';

import 'dio_config.dart';


class DioService {
  static Dio dio = Dio()
    ..interceptors.addAll(
      [
        CustomInterceptor(),
      ],
    );
}