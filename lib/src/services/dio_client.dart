import 'package:dio/dio.dart';
import '../models/trail_data.dart';

class DioClient {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: Duration(milliseconds: 5000),
    receiveTimeout: Duration(milliseconds: 3000),
  ));

  Future<TrailData> getTrailData() async {
    try {
      final response = await _dio.get('https://aduzja.github.io/explore/data.json');
      return TrailData.fromJson(response.data);
    } catch (e) {
      throw Exception('Błąd pobierania danych: $e');
    }
  }
}
