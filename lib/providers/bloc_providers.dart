import 'package:sr_app/exports/exports.dart';

dynamic blocProviders({
  required BuildContext context,
}) =>
    [
      BlocProvider<ProgramBloc>(
        lazy: false,
        create: (context) => ProgramBloc(
          programRepository: context.read<ProgramRepository>(),
        ),
      ),
    ];
