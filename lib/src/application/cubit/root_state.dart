part of 'root_cubit.dart';

@immutable
class RootState {
  final int selectedIndex;
  final bool isLoading;
  final String errorMessage;
  final TrailData? trailData;

  const RootState({
    required this.isLoading,
    required this.errorMessage,
    required this.trailData,
    this.selectedIndex = 0,
  });
}
