import 'package:sr_app/exports/exports.dart';

class EpisodeProvider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;
  Episode? _episodePlaying;
  Episode? _pausedEpisode;

  EpisodeProvider();

  Episode? get episodePlaying => _episodePlaying;
  Episode? get pausedEpisode => _pausedEpisode;
  bool get activeEpisode => episodePlaying != null || pausedEpisode != null;

  setEpisodePlaying({required Episode episode}) {
    final bool newEpisode =
        episodePlaying?.id != episode.id && pausedEpisode?.id != episode.id;

    _episodePlaying = newEpisode || episodePlaying == null ? episode : null;

    if (newEpisode) {
      assetsAudioPlayer?.stop();
      assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
      final List<Audio> audio = <Audio>[
        Audio.network(
          episode.audio,
        ),
      ];
      assetsAudioPlayer!.open(
        Playlist(audios: audio, startIndex: 0),
        showNotification: true,
        autoStart: true,
      );
    }

    if (!newEpisode) {
      assetsAudioPlayer?.playOrPause();
    }

    _pausedEpisode = !newEpisode ? episode : null;
    notifyListeners();
  }
}
