import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trilla1/core/api/api_consumer.dart';
import 'package:trilla1/core/api/end_Points.dart';
import 'package:trilla1/core/errors/exception.dart';
import 'package:trilla1/model/register_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.api}) : super(RegisterInitial());

  final ApiConsumer api;

  RegisterModel? userRegister;

  register(
      {
      required String name,
      required String phone,
      required String password,
      required String password_confirmation,
      }) async {
    try {
      emit(RegisterLoadedState());
      final response = await api.post(EndPoints.register,
          isFormData: true,
          data: {
        ApiKey.name : name,
        ApiKey.phone : phone,
        ApiKey.password : password,
        ApiKey.password_confirmation : password_confirmation,
      });

      userRegister = RegisterModel.fromJson(response);

      if (userRegister?.status == true ) {
        emit(RegisterSuccessState(data: userRegister!));
      }else{
        emit(RegisterFailureState(errorMessage: userRegister!.message));
      }
    } on ServerException catch (e) {
      emit(RegisterFailureState(errorMessage: e.errorModel.message));
    }
  }
}
