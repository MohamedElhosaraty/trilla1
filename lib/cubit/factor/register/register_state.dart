part of 'register_cubit.dart';

class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoadedState extends RegisterState {}

class RegisterSuccessState extends RegisterState {

  final RegisterModel data;

  RegisterSuccessState({required this.data});

}

class RegisterFailureState extends RegisterState {

  final String errorMessage;

  RegisterFailureState({required this.errorMessage});
}
