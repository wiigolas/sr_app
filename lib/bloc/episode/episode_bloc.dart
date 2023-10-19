import 'package:sr_app/exports/exports.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeRepository episodeRepository;

  EpisodeBloc({
    required this.episodeRepository,
  }) : super(const EpisodeState()) {
    on<FetchEpisodesEvent>(_onFetchEpisodesEvent);
  }

  void _onFetchEpisodesEvent(
    FetchEpisodesEvent event,
    Emitter<EpisodeState> emit,
  ) async {
    EpisodeResponse response = await episodeRepository.fetchPaginatedEpisodes(
      programId: event.programId,
      page: event.page,
    );

    if (response is SuccessfulEpisodeResponse) {
      emit(
        state.update(
          episodes: response.episodes,
        ),
      );
    }
  }
}
