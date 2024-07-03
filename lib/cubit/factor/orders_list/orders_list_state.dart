part of 'orders_list_cubit.dart';

class OrdersListState {}

class OrdersListInitial extends OrdersListState {}

class OrdersListLoadingState extends OrdersListState {}

class OrdersListSuccessState extends OrdersListState {
  final OrdersModel ordersList;

  OrdersListSuccessState({required this.ordersList});
}

class OrdersListFailureState extends OrdersListState {
  final String errorMessage;

  OrdersListFailureState({required this.errorMessage});
}
