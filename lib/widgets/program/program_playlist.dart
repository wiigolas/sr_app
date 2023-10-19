import 'package:sr_app/exports/exports.dart';

class ProgramPlaylist extends StatelessWidget {
  const ProgramPlaylist({super.key});

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
