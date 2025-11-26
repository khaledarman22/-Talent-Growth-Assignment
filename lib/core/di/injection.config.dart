// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart' as _i695;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/weather/bloc/theme/theme_cubit.dart' as _i929;
import '../../features/weather/bloc/weather/weather_bloc.dart' as _i73;
import '../../features/weather/repositories/weather_repository.dart' as _i443;
import '../network/dio_client.dart' as _i667;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.factory<_i929.ThemeCubit>(() => _i929.ThemeCubit());
    await gh.lazySingletonAsync<_i695.CacheOptions>(
      () => networkModule.getCacheOptions(),
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(
        () => networkModule.dio(gh<_i695.CacheOptions>()));
    gh.lazySingleton<_i443.WeatherRepository>(
        () => _i443.WeatherRepository(gh<_i361.Dio>()));
    gh.factory<_i73.WeatherBloc>(
        () => _i73.WeatherBloc(gh<_i443.WeatherRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i667.NetworkModule {}
