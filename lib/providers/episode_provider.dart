import 'package:sr_app/exports/exports.dart';

class EpisodeProvider extends ChangeNotifier {
  Episode? episodePlaying;

  EpisodeProvider();

  setEpisodePlaying({required Episode episode}) {
    episodePlaying = episodePlaying != episode ? episode : null;
    notifyListeners();
  }
}
