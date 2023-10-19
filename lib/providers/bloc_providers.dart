import 'package:sr_app/exports/exports.dart';

dynamic blocProviders({
  required BuildContext context,
}) =>
    [
      BlocProvider<EpisodeBloc>(
        lazy: false,
        create: (context) => EpisodeBloc(
          episodeRepository: context.read<EpisodeRepository>(),
        ),
      ),
      BlocProvider<ProgramBloc>(
        lazy: false,
        create: (context) => ProgramBloc(
          programRepository: context.read<ProgramRepository>(),
        ),
      ),
    ];
