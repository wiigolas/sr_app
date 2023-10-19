import 'package:sr_app/exports/exports.dart';

class ProgramPlaylist extends StatelessWidget {
  const ProgramPlaylist({super.key});

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(
      builder: (_, EpisodeState state) {
        return Column(
          children: [
            ...getEpisodes(state.episodes),
          ],
        );
      },
    );
  }
}
