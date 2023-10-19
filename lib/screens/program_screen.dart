import 'package:sr_app/exports/exports.dart';

class ProgramScreen extends StatelessWidget {
  final Program program;

  const ProgramScreen({
    required this.program,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChangeNotifierProvider(
          create: (_) => ProgramProvider(
            program: program,
          ),
          child: const ProgramBody(),
        ),
      ),
    );
  }
}
