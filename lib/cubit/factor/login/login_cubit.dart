import 'package:bloc/bloc.dart';
import 'package:trilla1/cache/cache_helper.dart';
import 'package:trilla1/core/api/api_consumer.dart';
import 'package:trilla1/core/api/end_Points.dart';
import 'package:trilla1/core/errors/exception.dart';
import 'package:trilla1/model/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.api}) : super(LoginInitial());

  final ApiConsumer api;

  LoginModel? userLogin;

  login({required String phone , required String password}) async
  {
    try {
      emit(LoginLoadedState());
      final response = await api.post(
        EndPoints.login,
        isFormData:  true,
        data: {
          ApiKey.phone : phone,
          ApiKey.password : password,
        }
      );

      userLogin = LoginModel.fromJson(response);

      if(userLogin?.status == true){
        CacheHelper().saveData(key: ApiKey.token, value: userLogin?.data.token);
        emit(LoginSuccessState(loginModel: userLogin!));
      }else{
        emit(LoginFailureState(errorMessage: userLogin!.message));
      }
    } on ServerException catch (e) {
      emit(LoginFailureState(errorMessage: e.errorModel.message));
    }


  }
}
