import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/home_page.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(LoadingState());
      emit(
        LoadedState(
          HomePage(),
        ),
      );
    } catch (e) {}
  }

  void detailData() {
    try {
      emit(
        LoadState(
          DetailPage(),
        ),
      );
    } catch (e) {}
  }

  //  detailPage() {
  //   emit(
  //     DetailState(
  //       DetailPage() as HomePage,
  //     ),
  //   );
  // }
}
