import 'package:sr_app/exports/exports.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text(
            'home',
          ),
        ),
      ),
    );
  }
}
