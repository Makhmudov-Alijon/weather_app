import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import '../../core/project_routes.dart';

class CustomInterceptor extends dio.Interceptor {
  final Logger logger = Logger();

  // final LoadingController loadingController = Get.put(LoadingController());

  @override
  void onResponse(dio.Response response, ResponseInterceptorHandler handler) {
    // logger.i(response.requestOptions.path);
    // logger.i(response);
    // logger.i(
    //     "REQUEST >>>> ${response.requestOptions.uri}\n headers : ${response.requestOptions.headers.values}\n body : ${response.requestOptions.data}\n param : ${response.requestOptions.queryParameters} \n response : ${response.data}");
    handler.next(response);
  }

  @override
  void onRequest(
      dio.RequestOptions options, dio.RequestInterceptorHandler handler) {
    logger.i(
        "REQUEST >>>> ${options.uri}\n headers : ${options.headers.values}\n body : ${options.data}\n param : ${options.queryParameters} \n");
    options.headers = {
      "X-Api-Key": "DZLgwTiyMTNeoYGWFJNpJQ==PLGB5STpSJ4SjqsI",
    };
    handler.next(options);
  }

  @override
  Future onError(
      dio.DioException err, dio.ErrorInterceptorHandler handler) async {
    logger.e(
        "REQUEST >>>> ${err.requestOptions.uri}\n headers : ${err.requestOptions.headers.values}\n body : ${err.requestOptions.data}\n param : ${err.requestOptions.queryParameters}\n error : ${err.message}\n response : ${err.response}");
    return handler.next(err);
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}