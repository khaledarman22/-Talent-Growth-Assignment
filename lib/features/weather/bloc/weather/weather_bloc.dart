import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/weather_model.dart';
import '../../repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc(this.repository) : super(WeatherInitial()) {
    on<GetWeather>(_onGetWeather);
    on<ClearWeather>(_onClearWeather);
  }

  Future<void> _onGetWeather(
    GetWeather event,
    Emitter<WeatherState> emit,
  ) async {
    if (event.cityName.trim().isEmpty) {
      emit(const WeatherError('City name cannot be empty'));
      return;
    }

    emit(WeatherLoading());

    final result = await repository.getCurrentWeather(event.cityName);

    result.fold(
      (failure) => emit(WeatherError(failure.message)),
      (weather) => emit(WeatherLoaded(weather)),
    );
  }

  void _onClearWeather(ClearWeather event, Emitter<WeatherState> emit) {
    emit(WeatherInitial());
  }
}
