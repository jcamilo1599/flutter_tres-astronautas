import '../domain/use_cases/giphy/giphy.dart';
import '../domain/use_cases/islands/islands.dart';
import '../domain/use_cases/start/start.dart';
import '../infrastructure/driven_adapter/giphy.dart';

class UseCaseConfig {
  // Inicio
  late StartUseCase startUseCase;

  // Islas
  late IslandsUseCase islandsUseCase;

  // Giphy
  late GiphyUseCase giphyUseCase;
  late GiphyApi _giphyApi;

  UseCaseConfig() {
    // Inicio
    startUseCase = StartUseCase();

    // Islas
    islandsUseCase = IslandsUseCase();

    // Giphy
    _giphyApi = GiphyApi();
    giphyUseCase = GiphyUseCase(_giphyApi);
  }
}
