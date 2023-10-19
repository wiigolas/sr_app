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
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(program.image),
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                onTap: () => context.go(
                  '/program/${program.id}',
                  extra: ProgramExtra(
                    program: program,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
