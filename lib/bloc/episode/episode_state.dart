import 'package:sr_app/exports/exports.dart';

@immutable
class EpisodeState extends Equatable {
  final List<Episode> episodes;
  final int page;
  final int totalPages;

  const EpisodeState({
    this.episodes = const <Episode>[],
    this.page = 1,
    this.totalPages = 1,
  });

  @override
  List<Object?> get props => [
        episodes,
        page,
        totalPages,
      ];

  EpisodeState update({
    List<Episode>? episodes,
    int? page,
    int? totalPages,
  }) {
    return copyWith(
      episodes: episodes,
      page: page,
      totalPages: totalPages,
    );
  }

  EpisodeState copyWith({
    List<Episode>? episodes,
    int? page,
    int? totalPages,
  }) {
    return EpisodeState(
      episodes: episodes ?? this.episodes,
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
    );
  }
}
