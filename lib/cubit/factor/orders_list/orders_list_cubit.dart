import 'package:bloc/bloc.dart';

import '../../../core/api/api_consumer.dart';
import '../../../core/api/end_Points.dart';
import '../../../core/errors/exception.dart';
import '../../../model/orders_model.dart';

part 'orders_list_state.dart';

class OrdersListCubit extends Cubit<OrdersListState> {
  OrdersListCubit({required this.api}) : super(OrdersListInitial());
  final ApiConsumer api;

  OrdersModel? ordersList;
  getOrderList() async {
    try {
      emit(OrdersListLoadingState());
      final response = await api.get(
        "${EndPoints.getOrders}?status=pending",
      );

      ordersList = OrdersModel.fromJson(response);

      if (ordersList?.status == true) {
        emit(OrdersListSuccessState(ordersList: ordersList!));
      } else {
        emit(OrdersListFailureState(errorMessage: ordersList!.message));
      }
    } on ServerException catch (e) {
      emit(OrdersListFailureState(errorMessage: e.errorModel.message));
    }
  }
}
