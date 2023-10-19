import 'package:sr_app/exports/exports.dart';

class ProgramPlayingFloatingActionButton extends StatelessWidget {
  const ProgramPlayingFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EpisodeProvider>(
      builder: (_, EpisodeProvider provider, __) {
        return FloatingActionButton.extended(
          heroTag: 'ProgramPlayingFloatingActionButton',
          backgroundColor: Colors.white,
          label: Text(
            episodeTitle(provider.episodePlaying?.title ??
                provider.pausedEpisode!.title),
            overflow: TextOverflow.ellipsis,
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.music_note,
          ),
        );
      },
    );
  }
}
