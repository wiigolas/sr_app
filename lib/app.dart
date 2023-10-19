import 'package:sr_app/exports/exports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...repositoryProviders,
        ...blocProviders(context: context),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
