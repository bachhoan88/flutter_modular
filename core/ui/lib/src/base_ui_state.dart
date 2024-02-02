import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_ui_state.freezed.dart';

abstract class BaseUiState<T> {
  final bool isLoading;
  final Exception? exception;
  final T? data;

  const BaseUiState({required this.isLoading, required this.exception, required this.data});
}

@freezed
sealed class UiState<T> with _$UiState implements BaseUiState<T> {
  const factory UiState.loading(
    bool isLoading, {
    @Default(null) Exception? exception,
    @Default(null) T? data,
  }) = UiStateLoading;

  const factory UiState.exception(
      Exception exception, {
        @Default(false) bool isLoading,
        @Default(null) T? data,
      }) = UiStateException;

  const factory UiState.success(
      T data, {
        @Default(false) bool isLoading,
        @Default(null) Exception? exception,
      }) = UiStateSuccess;
}
