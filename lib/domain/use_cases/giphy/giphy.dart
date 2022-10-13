import '../../models/giphy/gateway/giphy.dart';
import '../../models/giphy/giphy_api_resp.dart';
import '../../models/giphy/giphy_images.dart';

class GiphyUseCase {
  final GiphyApiGateway _gateway;

  GiphyUseCase(this._gateway);

  Future<List<GiphyImagesModel>> getRandom() async {
    final GiphyApiRespModel api = await _gateway.getRandom();
    List<GiphyImagesModel> response = <GiphyImagesModel>[];

    if (api.meta != null && api.meta!.msg == 'OK' && api.data != null) {
      response = api.data!;
    }

    return response;
  }
}
