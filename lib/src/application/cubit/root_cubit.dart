import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(RootState(
          isLoading: false,
          errorMessage: '',
        ));

  Future<void> start() async {
    emit(
      RootState(
        isLoading: true,
        errorMessage: '',
      ),
    );
    emit(
      RootState(
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
