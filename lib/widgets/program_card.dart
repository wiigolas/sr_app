import 'package:sr_app/exports/exports.dart';

class ProgramCard extends StatelessWidget {
  final Program program;

  const ProgramCard({
    required this.program,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.network(program.image),
    );
  }
}
