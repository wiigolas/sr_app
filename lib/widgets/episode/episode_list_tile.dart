import 'package:sr_app/exports/exports.dart';

class EpisodeListTile extends StatelessWidget {
  final Episode episode;
  const EpisodeListTile({
    required this.episode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<EpisodeProvider>(
        builder: (_, EpisodeProvider provider, __) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: PhysicalModel(
          color: Colors.white,
          elevation: 1,
          shadowColor: Colors.grey,
          child: ListTile(
            onTap: () {
              provider.setEpisodePlaying(episode: episode);
            },
            leading: Image.network(episode.image),
            title: Text(episode.title),
            trailing: Icon(
              provider.episodePlaying?.id == episode.id
                  ? Icons.pause
                  : Icons.play_arrow,
            ),
          ),
        ),
      );
    });
  }
}
