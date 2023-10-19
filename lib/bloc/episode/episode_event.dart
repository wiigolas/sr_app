import 'package:sr_app/exports/exports.dart';

@immutable
abstract class EpisodeEvent extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();

  const EpisodeEvent();
}

class FetchEpisodesEvent extends EpisodeEvent {
  final int page;
  final int programId;

  const FetchEpisodesEvent({
    this.page = 1,
    required this.programId,
  });
}
