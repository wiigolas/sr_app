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
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routerConfig: routerConfig,
      ),
    );
  }
}
