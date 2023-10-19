import 'package:sr_app/exports/exports.dart';

class ProgramScreen extends StatefulWidget {
  final Program program;

  const ProgramScreen({
    required this.program,
    super.key,
  });

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EpisodeBloc>().add(
          FetchEpisodesEvent(programId: widget.program.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EpisodeProvider>(
        builder: (_, EpisodeProvider provider, __) {
      return Scaffold(
        appBar: AppBar(),
        floatingActionButton: provider.activeEpisode
            ? const ProgramPlayingFloatingActionButton()
            : null,
        body: SafeArea(
          child: ChangeNotifierProvider(
            create: (_) => ProgramProvider(
              program: widget.program,
            ),
            child: const ProgramBody(),
          ),
        ),
      );
    });
  }
}
