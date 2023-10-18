import 'package:equatable/equatable.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/home_page.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(HomePage homePage);

  @override
  List<Object> get props => [];
}

class LoadState extends CubitStates {
  LoadState(DetailPage detailPage);

  @override
  List<Object> get props => [];
}

class DetailState extends CubitStates {
  DetailState(HomePage homePage);

  @override
  List<Object> get props => [];
}
