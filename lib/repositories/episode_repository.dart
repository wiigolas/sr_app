import 'package:http/http.dart' as http;
import 'package:sr_app/exports/exports.dart';

class EpisodeRepository {
  Future<EpisodeResponse> fetchPaginatedEpisodes({
    required int programId,
    int page = 1,
  }) async {
    try {
      final Uri requestUri = Uri.parse(
        '$getEpisodesUrl$programId&page=$page',
      );

      final http.Response httpResponse = await http.get(
        requestUri,
      );

      final Map<String, dynamic> response = json.decode(
        utf8.decode(httpResponse.bodyBytes),
      ) as Map<String, dynamic>;

      final List<Episode> episodes = <Episode>[];

      for (Map<String, dynamic> episode in response['episodes']) {
        if (episode['listenpodfile'] != null) {
          episodes.add(
            Episode.fromMap(episode),
          );
        }
      }

      return SuccessfulEpisodeResponse(
        episodes: episodes,
      );
    } catch (_) {
      return FailedEpisodeResponse();
    }
  }
}
