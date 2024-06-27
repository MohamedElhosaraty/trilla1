part of 'login_cubit.dart';

class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoadedState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailureState extends LoginState {

  final String errorMessage;

  LoginFailureState({required this.errorMessage});
}
