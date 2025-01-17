part of 'root_cubit.dart';

@immutable
class RootState {
  final int selectedIndex;
  final bool isLoading;
  final String errorMessage;

  final List<TrailItem> selectedTrailItems;
  final TrailData? trailData;

  const RootState({
    required this.isLoading,
    required this.errorMessage,
    required this.trailData,
    required this.selectedTrailItems,
    this.selectedIndex = 0,
  });
}
