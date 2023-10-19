import 'package:sr_app/exports/exports.dart';

@immutable
class EpisodeState extends Equatable {
  final List<Episode> episodes;

  const EpisodeState({
    this.episodes = const <Episode>[],
  });

  @override
  List<Object?> get props => [
        episodes,
      ];

  EpisodeState update({
    List<Episode>? episodes,
  }) {
    return copyWith(
      episodes: episodes,
    );
  }

  EpisodeState copyWith({
    List<Episode>? episodes,
  }) {
    return EpisodeState(
      episodes: episodes ?? this.episodes,
    );
  }
}
