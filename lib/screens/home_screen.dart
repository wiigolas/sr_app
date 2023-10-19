import 'package:sr_app/exports/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
