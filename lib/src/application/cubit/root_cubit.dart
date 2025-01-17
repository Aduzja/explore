import 'package:bloc/bloc.dart';
import 'package:explore/src/models/trail_data.dart';
import 'package:explore/src/services/dio_client.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  final DioClient _dioClient;

  RootCubit(this._dioClient)
      : super(RootState(
          isLoading: false,
          errorMessage: '',
          trailData: null,
        ));

  Future<void> start() async {
    emit(
      RootState(
        isLoading: true,
        errorMessage: '',
        trailData: null,
      ),
    );

    try {
      final trailData = await _dioClient.getTrailData();
      emit(
        RootState(
          isLoading: false,
          errorMessage: '',
          trailData: trailData,
        ),
      );
    } catch (e) {
      emit(
        RootState(
          isLoading: false,
          errorMessage: 'Błąd pobierania danych: $e',
          trailData: null,
        ),
      );
    }
  }

  void selectTab(int index) {
    emit(RootState(
      selectedIndex: index,
      isLoading: false,
      errorMessage: '',
      trailData: null,
    ));
  }
}
