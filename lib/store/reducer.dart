import 'package:redux_flutter_counter_app/store/actions.dart';

int reducer(int previousState, dynamic action) {
  if (action == Actions.increment) {
    return previousState + 1;
  }
  return previousState;
}
