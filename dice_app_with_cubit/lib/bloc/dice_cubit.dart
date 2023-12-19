import 'package:bloc/bloc.dart';

part 'dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(const DiceState());
  void clientAction() {
    emit(state.copyWith(
        clientFirstIndex: state.clientFirstIndex + 1,
        clientSecondIndex: state.clientSecondIndex + 1,
        clientSum: state.clientSum +
            state.clientFirstIndex +
            state.clientSecondIndex));
  }

  void appAction() {
    emit(state.copyWith(
        appFirstIndex: state.appFirstIndex + 1,
        appSecondIndex: state.appSecondIndex + 1,
        appSum: state.appSum + state.appFirstIndex + state.appSecondIndex));
  }

  void resetAll() {
    if (state.clientSum >= 50) {
      emit(state.copyWith(
          clientFirstIndex: 1,
          clientSecondIndex: 1,
          clientSum: 0,
          appFirstIndex: 1,
          appSecondIndex: 1,
          appSum: 0));
    }
    if (state.appSum >= 50) {
      emit(state.copyWith(
          clientFirstIndex: 1,
          clientSecondIndex: 1,
          clientSum: 0,
          appFirstIndex: 1,
          appSecondIndex: 1,
          appSum: 0));
    }
  }
}
