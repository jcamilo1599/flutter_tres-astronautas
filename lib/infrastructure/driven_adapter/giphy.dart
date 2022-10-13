import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/models/giphy/gateway/giphy.dart';
import '../../domain/models/giphy/giphy_api_resp.dart';
import '../../domain/models/giphy/giphy_meta_api_resp.dart';
import '../../resources/environments/environments.dart';
import '../helpers/api_error.dart';

class GiphyApi extends GiphyApiGateway {
  @override
  Future<GiphyApiRespModel> getRandom() async {
    GiphyApiRespModel response;

    try {
      final Uri url =
          Uri.parse('${Environments.giphyTrending}${Environments.apiKey}');
      final http.Response httpResponse = await http.get(url);

      response = GiphyApiRespModel.fromJson(
        json.decode(utf8.decode(httpResponse.bodyBytes)),
      );
    } on Exception catch (error) {
      response = GiphyApiRespModel(
        meta: GiphyMetaApiRespModel(
          msg: apiError(error),
        ),
      );
    }

    return response;
  }
}
