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
    context.read<ProgramBloc>().add(FetchProgramsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () => context.go('/program'),
          child: const Text(
            'programs',
          ),
        ),
      ),
    );
  }
}
