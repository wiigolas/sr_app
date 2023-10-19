import 'package:sr_app/exports/exports.dart';

dynamic repositoryProviders = [
  RepositoryProvider(create: (_) => EpisodeRepository()),
  RepositoryProvider(create: (_) => ProgramRepository()),
];
