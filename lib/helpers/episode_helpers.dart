import 'package:sr_app/exports/exports.dart';

String episodeTitle(String title) {
  return (title).substring(0, title.length > 40 ? 40 : title.length).trim();
}

List<Widget> getEpisodes(List<Episode> episodes) {
  List<Widget> episodeList = [];
  for (Episode episode in episodes) {
    episodeList.add(
      EpisodeListTile(
        episode: episode,
      ),
    );
  }
  return episodeList;
}
