import 'package:sr_app/exports/exports.dart';

class EpisodeProvider extends ChangeNotifier {
  int? isPlaying;

  EpisodeProvider();

  setIsPlaying({required int episodeId}) {
    isPlaying = isPlaying != episodeId ? episodeId : null;
    notifyListeners();
  }
}
