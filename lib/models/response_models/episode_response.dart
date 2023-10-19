import 'package:sr_app/exports/exports.dart';

abstract class EpisodeResponse {}

class SuccessfulEpisodeResponse implements EpisodeResponse {
  final List<Episode> episodes;

  SuccessfulEpisodeResponse({
    required this.episodes,
  });
}

class FailedEpisodeResponse implements EpisodeResponse {
  FailedEpisodeResponse();
}
