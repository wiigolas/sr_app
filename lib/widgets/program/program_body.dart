import 'package:sr_app/exports/exports.dart';

class ProgramBody extends StatelessWidget {
  const ProgramBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ProgramInformation(),
          ProgramPlaylist(),
        ],
      ),
    );
  }
}
