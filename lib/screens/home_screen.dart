import 'package:sr_app/exports/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProgramBloc>().add(
          const FetchProgramsEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EpisodeProvider>(
      builder: (_, EpisodeProvider provider, __) {
        return Scaffold(
          floatingActionButton: provider.activeEpisode
              ? const ProgramPlayingFloatingActionButton()
              : null,
          body: const SafeArea(
            child: ProgramsContainer(),
          ),
        );
      },
    );
  }
}
