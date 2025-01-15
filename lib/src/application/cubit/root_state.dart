part of 'root_cubit.dart';

@immutable
class RootState {
  final bool isLoading;
  final String errorMessage;

  const RootState({
    required this.isLoading,
    required this.errorMessage,
  });
}
