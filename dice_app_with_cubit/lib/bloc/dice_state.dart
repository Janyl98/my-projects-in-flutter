part of 'dice_cubit.dart';

class DiceState {
  const DiceState({
    // Client
    this.clientFirstIndex = 1,
    this.clientSecondIndex = 1,
    this.clientSum = 0,
    // App
    this.appFirstIndex = 1,
    this.appSecondIndex = 1,
    this.appSum = 0,
  });
  // Client
  final int clientFirstIndex;
  final int clientSecondIndex;
  final int clientSum;
  //App
  final int appFirstIndex;
  final int appSecondIndex;
  final int appSum;
  DiceState copyWith({
    // Client
    int? clientFirstIndex,
    int? clientSecondIndex,
    int? clientSum,
    // App
    int? appFirstIndex,
    int? appSecondIndex,
    int? appSum,
  }) {
    return DiceState(
      // Client
      clientFirstIndex: clientFirstIndex ?? this.clientFirstIndex,
      clientSecondIndex: clientSecondIndex ?? this.clientSecondIndex,
      clientSum: clientSum ?? this.clientSum,
      // App
      appFirstIndex: appFirstIndex ?? this.appFirstIndex,
      appSecondIndex: appSecondIndex ?? this.appSecondIndex,
      appSum: appSum ?? this.appSum,
    );
  }
}
