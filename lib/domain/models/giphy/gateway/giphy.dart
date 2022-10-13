import '../giphy_api_resp.dart';

abstract class GiphyApiGateway {
  Future<GiphyApiRespModel> getRandom();
}