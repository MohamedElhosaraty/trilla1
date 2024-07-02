import 'package:dio/dio.dart';
import 'package:trilla1/cache/cache_helper.dart';
import 'package:trilla1/core/api/end_Points.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] = "Bearer ${CacheHelper().getDataString(
      key: ApiKey.token,
    )}";
    //  options.headers['Authorization'] = CacheHelper().getData(key: ApiKey.token);

    super.onRequest(options, handler);
  }
}
